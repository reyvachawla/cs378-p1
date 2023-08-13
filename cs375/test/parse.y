%{ /* pars1.y Pascal Parser Gordon S. Novak Jr. ; 08 Jul 22 */


/* Copyright (c) 2022 Gordon S. Novak Jr. and
The University of Texas at Austin. */


/* 14 Feb 01; 01 Oct 04; 02 Mar 07; 27 Feb 08; 24 Jul 09; 02 Aug 12;
30 Jul 13; 25 Jul 19 ; 28 Feb 22 */


/*
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.


; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
; GNU General Public License for more details.


; You should have received a copy of the GNU General Public License
; along with this program; if not, see <http://www.gnu.org/licenses/>.
*/




/* NOTE: Copy your lexan.l lexical analyzer to this directory. */


/* To use:
make pars1y has 1 shift/reduce conflict
pars1y execute the parser
i:=j .
^D control-D to end input


pars1y execute the parser
begin i:=j; if i+j then x:=a+b*c else x:=a*b+c; k:=i end.
^D


pars1y execute the parser
if x+y then if y+z then i:=j else k:=2.
^D


You may copy pars1.y to be parse.y and extend it for your
assignment. Then use make parser as above.
*/


/* Yacc reports 1 shift/reduce conflict, due to the ELSE part of
the IF statement, but Yacc's default resolves it in the right way.*/


#include <stdio.h>
#include <ctype.h>
#include <assert.h>
#include <string.h>
#include "token.h"
#include "lexan.h"
#include "symtab.h"
#include "parse.h"
#include "pprint.h"


/* define the type of the Yacc stack element to be TOKEN */


#define YYSTYPE TOKEN


TOKEN parseresult;


%}


/* Order of tokens corresponds to tokendefs.c; do not change */


%token IDENTIFIER STRING NUMBER /* token types */


%token PLUS MINUS TIMES DIVIDE /* Operators */
%token ASSIGN EQ NE LT LE GE GT POINT DOT AND OR NOT DIV MOD IN


%token COMMA /* Delimiters */
%token SEMICOLON COLON LPAREN RPAREN LBRACKET RBRACKET DOTDOT


%token ARRAY BEGINBEGIN /* Lex uses BEGIN */
%token CASE CONST DO DOWNTO ELSE END FILEFILE FOR FUNCTION GOTO IF LABEL NIL
%token OF PACKED PROCEDURE PROGRAM RECORD REPEAT SET THEN TO TYPE UNTIL
%token VAR WHILE WITH


%right thenthen ELSE // Same precedence, but "shift" wins.


%%


program : PROGRAM IDENTIFIER LPAREN idlist RPAREN SEMICOLON lblock DOT { parseresult = makeprogram($2, $4, $7); }
;
idlist : IDENTIFIER COMMA idlist { $$ = cons($1, $3); }
| IDENTIFIER { $$ = cons($1, NULL); }
;
sign : PLUS
| MINUS
;
unsigconst : NUMBER
| NIL
| STRING //{$1->tokentype = STRINGTYPE;}
;
plus_op : PLUS
| MINUS
| OR
;
compare_op : EQ
| LT
| GT
| NE
| LE
| GE
| IN
;
times_op : TIMES
| DIVIDE
| DIV
| MOD
| AND
;
numlist : NUMBER COMMA numlist { instlabel($1); }
| NUMBER { instlabel($1); }
;
fields : idlist COLON type { $$ = instfields($1, $3); }
;
field_list : fields SEMICOLON field_list { $$ = nconc($1, $3); }
| fields
;
label : NUMBER COLON statement { $$ = dolabel($1, $2, $3); }
;
lblock : LABEL numlist SEMICOLON cblock { $$ = $4; }
| cblock
;
cblock : CONST cdef_list tblock { $$ = $3; }
| tblock
;
cdef : IDENTIFIER EQ constant { instconst($1, $3); }
;
tblock : TYPE tdef_list vblock { $$ = $3; }
| vblock
;
tdef : IDENTIFIER EQ type { insttype($1, $3); }
;
vblock : VAR vardef_list block { $$ = $3; }
| block
;
vardef : idlist COLON type { instvars($1, $3); }
;
block : BEGINBEGIN statement endpart { $$ = makeprogn($1,cons($2, $3)); }
;
cdef_list : cdef SEMICOLON cdef_list
| cdef SEMICOLON
;
tdef_list : tdef SEMICOLON tdef_list
| tdef SEMICOLON
;
vardef_list: vardef SEMICOLON vardef_list
| vardef SEMICOLON
;
constant : sign IDENTIFIER { $$ = unaryop($1, $2); }
| IDENTIFIER
| sign NUMBER { $$ = unaryop($1, $2); }
| NUMBER
| STRING //{$1->tokentype = STRINGTYPE;}
;
type : simpletype
| ARRAY LBRACKET simtyp_list RBRACKET OF type { $$ = instarray($3, $6); }
| RECORD field_list END { $$ = instrec($1, $2); }
| POINT IDENTIFIER { $$ = instpoint($1, $2); }
;
simpletype : IDENTIFIER { $$ = findtype($1); }
| LPAREN idlist RPAREN { $$ = instenum($2); }
| constant DOTDOT constant { $$ = instdotdot($1, $2, $3); }
;
simtyp_list: simpletype COMMA simtyp_list { $$ = cons($1, $3); }
| simpletype { $$ = cons($1, NULL); }
;
state_list : statement SEMICOLON state_list { $$ = cons($1, $3); }
| statement
;
statement : BEGINBEGIN statement endpart { $$ = makeprogn($1,cons($2, $3)); }
| IF expr THEN statement endif { $$ = makeif($1, $2, $4, $5); }
| funcall
| assignment
| FOR assignment TO expr DO statement { $$ = makefor(1, $1, $2, $3, $4, $5, $6); }
| FOR assignment DOWNTO expr DO statement { $$ = makefor(-1, $1, $2, $3, $4, $5, $6); }
| REPEAT state_list UNTIL expr { $$ = makerepeat($1, $2, $3, $4); }
| WHILE expr DO statement			{ $$ = makewhile($1, $2, $3, $4); }
| GOTO NUMBER { $$ = dogoto($1, $2); }
| label
;
endpart : SEMICOLON statement endpart { $$ = cons($2, $3); }
| END { $$ = NULL; }
;
endif : ELSE statement { $$ = $2; }
| /* empty */ { $$ = NULL; } %prec thenthen
;
assignment : variable ASSIGN expr { $$ = binop($2, $1, $3); }
;
funcall : IDENTIFIER LPAREN expr_list RPAREN { $$ = makefuncall($2, $1, $3); }
;
sim_expr : sign term { $$ = unaryop($1, $2); }
| term
| sim_expr plus_op term { $$ = binop($2, $1, $3); }
;
expr_list : expr COMMA expr_list { $$ = cons($1, $3); }
| expr
;
expr : expr compare_op sim_expr { $$ = binop($2, $1, $3); }
| sim_expr
;
term : term times_op factor { $$ = binop($2, $1, $3); }
| factor
;
variable : IDENTIFIER { $$ = findid($1); }
| variable LBRACKET expr_list RBRACKET { $$ = arrayref($1, $2, $3, $4); }
| variable DOT IDENTIFIER { $$ = reducedot($1, $2, $3); }
| variable POINT { $$ = dopoint($1, $2); }
;
factor : LPAREN expr RPAREN { $$ = $2; }
| variable
| unsigconst
| funcall
| NOT factor { $$ = unaryop($1, $2); }
;
%%


/* You should add your own debugging flags below, and add debugging
printouts to your programs.


You will want to change DEBUG to turn off printouts once things
are working.
*/


#define DEBUG   0 /* set bits here for debugging, 0 = off */
#define DB_CONS 1 /* bit to trace cons */
#define DB_BINOP 2 /* bit to trace binop */
#define DB_MAKEIF 4 /* bit to trace makeif */
#define DB_MAKEPROGN 8 /* bit to trace makeprogn */
#define DB_PARSERES 16 /* bit to trace parseresult */
#define DB_MAKEREPEAT 1 << 5
#define DB_MAKEFOR 1 << 6
#define DB_INSTCONST 1 << 7
#define DB_REDUCEDOT 1 << 8
#define DB_ARRAYREF 1 << 9
#define DB_MAKESUB 1 << 10
#define DB_MAKEAREF 1 << 11
#define DB_NCONC 1 << 12
#define DB_DOLABEL 1 << 13
#define DB_INSTENUM 1 < 14
#define DB_INSTREC 1 << 15
#define DB_INSTPOINT 1 << 16
#define DB_MAKEFUNCALL 1 << 17


int labelnumber = 0; /* sequential counter for internal label numbers */
int label_table[50];


/* Note: you should add to the above values and insert debugging
printouts in your routines similar to those that are shown here. */


/* cons links a new item onto the front of a list. Equivalent to a push.
(cons 'a '(b c)) = (a b c) */
TOKEN cons(TOKEN item, TOKEN list) /* add item to front of list */
{ 
  item->link = list;
  if (DEBUG & DB_CONS)
  { 
    printf("cons\n");
    dbugprinttok(item);
    dbugprinttok(list);
    fflush(stdout);
  };
return item;
}

/* nconc concatenates two token lists, destructively, by making the last link
of lista point to listb.
(nconc '(a b) '(c d e)) = (a b c d e) */
/* nconc is useful for putting together two fieldlist groups to
make them into a single list in a record declaration. */
/* nconc should return lista, or listb if lista is NULL. */
TOKEN nconc(TOKEN lista, TOKEN listb) {
  if (lista == NULL) {
    return listb;
  }
  TOKEN list_a_tok = lista;
  while (list_a_tok->link != NULL) {
    list_a_tok = list_a_tok->link;
  }
  list_a_tok->link = listb;
  if (DEBUG & DB_NCONC) {
    printf("nconc\n");
    dbugprinttok(list_a_tok);
    fflush(stdout);
  }
  return list_a_tok;
}


/* makearef makes an array reference operation.
off is be an integer constant token
tok (if not NULL) is a (now) unused token that is recycled. */
TOKEN makearef(TOKEN var, TOKEN off, TOKEN tok){
  if (var->whichval == AREFOP) {
    TOKEN plus = makeop(PLUSOP);
    TOKEN off1 = var->operands->link;
    off1->link = off;
    plus->operands = off1;
    var->operands->link = plus;
    var->symtype = var->symtype->datatype;
    return var;
  }
  TOKEN array_tok = makeop(AREFOP);
  array_tok->operands = var;
  var->link = off;
  off->link = NULL;
  array_tok->symtype = var->symtype->datatype;
  // basicdt?
  if (DEBUG && DB_MAKEAREF) {
    printf("makearef\n");
    dbugprinttok(array_tok);
    dbugprinttok(var);
    fflush(stdout);
  }
  return array_tok;
}


/* makewhile makes structures for a while statement.
tok and tokb are (now) unused tokens that are recycled. */
TOKEN makewhile(TOKEN tok, TOKEN expr, TOKEN tokb, TOKEN statement) {
  int labelnum = labelnumber;
  TOKEN label = makelabel();
  tok = makeprogn(tok, label);

  TOKEN goto_= makegoto(labelnum);
  TOKEN s = makeprogn(tokb, statement);
  TOKEN check = talloc();

  check = makeif(check, expr, s, NULL);

  statement->link = goto_;
  label->link = check;

  return tok;
}


/* makesubrange makes a SUBRANGE symbol table entry, puts the pointer to it
into tok, and returns tok. */
TOKEN makesubrange(TOKEN tok, int low, int high) {
  SYMBOL subrange = makesym("");
  subrange->kind = SUBRANGE;
  subrange->basicdt = INTEGER;
  subrange->size = basicsizes[INTEGER];
  subrange->highbound = high;
  subrange->lowbound = low;
  tok->symtype = subrange;
  /* printf("subrange\n");
  fflush(stdout); */
  return tok;
}

/* makeop makes a new operator token with operator number opnum.
Example: makeop(FLOATOP) */
TOKEN makeop(int opnum) {
  TOKEN tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = opnum;
  /* printf("makeop\n");
  fflush(stdout); */
  return tok;
}


/* makefloat forces the item tok to be floating, by floating a constant
or by inserting a FLOATOP operator */
TOKEN makefloat(TOKEN tok) {
  if(tok->tokentype == NUMBERTOK) {
    tok->realval = (double) tok->intval;
    tok->basicdt = REAL;
    return tok;
  } else {
    TOKEN floattok = makeop(FLOATOP);
    floattok->operands = tok;
    return floattok;
  }
  /* printf("makefloat\n");
  fflush(stdout); */
}


/* makefix forces the item tok to be integer, by truncating a constant
or by inserting a FIXOP operator */
TOKEN makefix(TOKEN tok) {
  if(tok->tokentype == NUMBERTOK) {
    tok->intval = (int) tok->realval;
    tok->basicdt = INTEGER;
    return tok;
  } else {
    TOKEN fixtok = makeop(FIXOP);
    fixtok->operands = tok;
    return fixtok;
  }
  /* printf("makefix\n");
  fflush(stdout); */
}


/* unaryop links a unary operator op to one operand, lhs */
TOKEN unaryop(TOKEN op, TOKEN lhs) {
  op->operands = lhs;
  lhs->link = NULL;
  /* printf("unaryop\n");
  fflush(stdout); */
  return op;
}


/* binop links a binary operator op to two operands, lhs and rhs. */
TOKEN binop(TOKEN op, TOKEN lhs, TOKEN rhs) /* reduce binary operator */
{ 
  op->operands = lhs; /* link operands to operator */
  lhs->link = rhs; /* link second operand to first */
  rhs->link = NULL; /* terminate operand list */
  // NIL check
  if (rhs->whichval == (NIL - RESERVED_BIAS)) {
		rhs->tokentype = NUMBERTOK;
		rhs->basicdt= INTEGER;
		rhs->intval = 0;
	}
  if (lhs->basicdt == REAL && rhs->basicdt == REAL) {
    op->basicdt = REAL;
  } else if (lhs->basicdt == REAL && rhs->basicdt == INTEGER) {
    op->basicdt = REAL;
    TOKEN floattok = makefloat(rhs);
    lhs->link = floattok;
  } else if (lhs->basicdt == INTEGER && rhs->basicdt == REAL) {
    if (op->whichval == ASSIGNOP) {
      op->basicdt = INTEGER;
      TOKEN fixtok = makefix(rhs);
      lhs->link = fixtok;
    } else {
      op->basicdt = REAL;
      TOKEN floattok = makefloat(lhs);
      floattok->link = rhs;
    }
  }
  if (DEBUG & DB_BINOP)
  { 
    printf("binop\n");
    dbugprinttok(op);
    dbugprinttok(lhs);
    dbugprinttok(rhs);
    fflush(stdout);
  };
  return op;
}


/* reducedot handles a record reference.
dot is a (now) unused token that is recycled. */
TOKEN reducedot(TOKEN var, TOKEN dot, TOKEN field) {
  assert( var->symtype->kind == RECORDSYM );
  SYMBOL current = var->symtype->datatype;
  while (current && strcmp(current->namestring, field->stringval) != 0) {
    current = current->link;
  }
  dot = makearef(var, makeintc(current->offset), dot);
  dot->symtype = current->datatype;
  dot->basicdt = current->datatype->basicdt;
  return dot;
}


/* arrayref processes an array reference a[i]
subs is a list of subscript expressions.
tok and tokb are (now) unused tokens that are recycled. */
TOKEN arrayref(TOKEN arr, TOKEN tok, TOKEN subs, TOKEN tokb) {
  assert( arr->symtype->kind == ARRAYSYM );
  // 2d
  if (subs->link) {
    TOKEN multi = makeop(TIMESOP);
    int high = arr->symtype->highbound;
    int low = arr->symtype->lowbound;
    int size = (arr->symtype->size / (high - low + 1));

    TOKEN sub = copytok (subs);
    TOKEN int_size = makeintc(size);
    TOKEN neg_size = makeintc(-1 * size * low);
    TOKEN plus = makeop(PLUSOP);

    sub->link = NULL;
    int_size->link = sub;
    multi->operands = int_size;

    neg_size->link = multi;
    plus->operands = neg_size;

    TOKEN sub_arrayref = makearef(arr, plus, tokb);
    sub_arrayref->symtype = arr->symtype->datatype;

    return arrayref(sub_arrayref, tok, subs->link, tokb);
  // 1d
  } else {
    TOKEN multi = makeop(TIMESOP);
    int high = arr->symtype->highbound;
    int low = arr->symtype->lowbound;
    int size = (arr->symtype->size / (high - low + 1));

    TOKEN int_size = makeintc(size);
    TOKEN neg_size = makeintc(-1 * size * low);
    TOKEN plus = makeop(PLUSOP);

    int_size->link = subs;
    multi->operands = int_size;

    neg_size->link = multi;
    plus->operands = neg_size; 

   if (DEBUG & DB_ARRAYREF) {
    printf("arrayref\n");
    dbugprinttok(arr);
    dbugprinttok(subs);
    dbugprinttok(plus);
    fflush(stdout);
  }
  return makearef(arr, plus, tokb);
  }
}


/* makefuncall makes a FUNCALL operator and links it to the fn and args.
tok is a (now) unused token that is recycled. */
TOKEN makefuncall(TOKEN tok, TOKEN fn, TOKEN args) {
  if (strcmp(fn->stringval, "new") == 0) {
    tok = makeop(ASSIGNOP);
    tok->operands = args;

    SYMBOL type_sym = args->symtype;
    type_sym = type_sym->datatype;

    TOKEN func = talloc();
    func->whichval = FUNCALLOP;
    func->tokentype = OPERATOR;
    func->operands = fn;
    fn->link = makeintc(type_sym->datatype->size);
    args->link = func;

  } else {
    if (strcmp(fn->stringval, "writeln") == 0) {
        if (args->basicdt == INTEGER) {
          strcpy(fn->stringval, "writelni");
        } else if (args->basicdt == REAL) {
          strcpy(fn->stringval, "writelnf");
        } else {
          strcpy(fn->stringval, "writeln");
        }
      }
    tok->whichval = FUNCALLOP;
    tok->tokentype = OPERATOR;
    tok->operands = fn;
    fn->link = args;
  }
  SYMBOL sym = searchst(fn->stringval);
  fn->symentry = sym;

  SYMBOL typ = sym->datatype->datatype;
  fn->symtype = typ;

  tok->symtype = fn->symtype;
  tok->symentry = fn->symentry;

  if (DEBUG && DB_MAKEFUNCALL) {
    printf("makefuncall\n");
    dbugprinttok(tok);
    fflush(stdout);
  }
  return tok;
}


/* makeprogram makes the tree structures for the top-level program */
TOKEN makeprogram(TOKEN name, TOKEN args, TOKEN statements) {
  TOKEN tok = talloc();
  TOKEN prog_tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = PROGRAMOP;
  tok->operands = name;
  prog_tok = makeprogn(prog_tok, args);
  name->link = prog_tok;
  prog_tok->link = statements;
  
  return tok;
}


/* makeif makes an IF operator and links it to its arguments.
tok is a (now) unused token that is recycled to become an IFOP operator */
TOKEN makeif(TOKEN tok, TOKEN exp, TOKEN thenpart, TOKEN elsepart)
{ tok->tokentype = OPERATOR; /* Make it look like an operator */
  tok->whichval = IFOP;
  if (elsepart != NULL) elsepart->link = NULL;
    thenpart->link = elsepart;
    exp->link = thenpart;
    tok->operands = exp;
  if (DEBUG & DB_MAKEIF)
  { printf("makeif\n");
  dbugprinttok(tok);
  dbugprinttok(exp);
  dbugprinttok(thenpart);
  dbugprinttok(elsepart);
  };
  return tok;
}


/* makeprogn makes a PROGN operator and links it to the list of statements.
tok is a (now) unused token that is recycled. */
TOKEN makeprogn(TOKEN tok, TOKEN statements)
  { 
  tok->tokentype = OPERATOR;
  tok->whichval = PROGNOP;
  tok->operands = statements;
  if (DEBUG & DB_MAKEPROGN)
    { printf("makeprogn\n");
    dbugprinttok(tok);
    dbugprinttok(statements);
    fflush(stdout);
  };
  return tok;
}


/* dolabel is the action for a label of the form <number>: <statement>
tok is a (now) unused token that is recycled. */
TOKEN dolabel(TOKEN labeltok, TOKEN tok, TOKEN statement) {
  int user_label = 0;
  for (int i = 0; i < labelnumber; i++) {
    if (label_table[i] == labeltok->intval) {
      user_label = i;
    }
  }
  TOKEN tokb = makeintc(user_label);
  labeltok = makeop(LABELOP);

  labeltok->link = statement;
  labeltok->operands = tokb;
  tok = makeprogn(tok, labeltok);

  if (DEBUG & DB_DOLABEL) {
    printf("dolabel\n");
    dbugprinttok(tok);
    fflush(stdout);
  }
  return tok;
}


/* dogoto is the action for a goto statement.
tok is a (now) unused token that is recycled. */
TOKEN dogoto(TOKEN tok, TOKEN labeltok) {
  int user_label = 0;
  for (int i = 0; i < labelnumber; i++) {
    if (label_table[i] == labeltok->intval) {
      user_label = i;
    }
  }
  tok = makegoto(user_label);

  return tok;
}


/* dopoint handles a ^ operator. john^ becomes (^ john) with type record
tok is a (now) unused token that is recycled. */
TOKEN dopoint(TOKEN var, TOKEN tok) {
  assert( var->symtype->kind == POINTERSYM );
  assert( var->symtype->datatype->kind == TYPESYM );
  tok->tokentype = OPERATOR;
  tok->operands = var;
  tok->whichval = POINTEROP;
  var->link = NULL;
  tok->symtype = var->symtype->datatype->datatype;

  return tok;
}


/* instlabel installs a user label into the label table */
void instlabel (TOKEN num) {
  label_table[labelnumber] = num->intval;
  labelnumber++;
}


/* instenum installs an enumerated subrange in the symbol table,
e.g., type color = (red, white, blue)
by calling makesubrange and returning the token it returns. */
TOKEN instenum(TOKEN idlist) {
  int high = 0;
  // copy of list for iterations
  TOKEN cp_list = copytok(idlist);
  while (cp_list != NULL) {
    TOKEN int_tok = makeintc(high);
    instconst(cp_list, int_tok);
    high++;
    cp_list = cp_list->link;
  }

  TOKEN tok = makesubrange(idlist, 0, high - 1);

  if (DEBUG & DB_INSTENUM) {
    printf("install enum\n");
    dbugprinttok(idlist);
  }
  return tok;
}


/* instdotdot installs a .. subrange in the symbol table.
dottok is a (now) unused token that is recycled. */
TOKEN instdotdot(TOKEN lowtok, TOKEN dottok, TOKEN hightok) {
  int high = hightok->intval;
  int low = lowtok->intval;
  TOKEN tok = makesubrange(dottok, low, high);
  /* printf("instdotdot\n");
  fflush(stdout); */
  return tok;
}


TOKEN instarray(TOKEN bounds, TOKEN typetok) {
  SYMBOL array = makesym("");
  int high = bounds->symtype->highbound;
  int low = bounds->symtype->lowbound;

  array->datatype = typetok->symtype;
  array->kind = ARRAYSYM;

  array->highbound = high;
  array->lowbound = low;
  int size = array->datatype->size * (array->highbound - array->lowbound + 1);
  array->size = size;

  TOKEN sub_array;
  if(bounds->link){
    int high = bounds->link->symtype->highbound;
    int low = bounds->link->symtype->lowbound;

    TOKEN subrange = makesubrange(copytok(typetok), low, high);
    sub_array = instarray(subrange, typetok);

    array->size = array->datatype->size * (array->highbound - array->lowbound + 1);
    array->datatype = sub_array->symtype;
  }
  typetok->symtype = array;
  /* printf("instarray\n");
  fflush(stdout); */
  return typetok;
}


/* instfields will install type in a list idlist of field name tokens:
re, im: real put the pointer to REAL in the RE, IM tokens.
typetok is a token whose symtype is a symbol table pointer.
Note that nconc() can be used to combine these lists after instrec() */
TOKEN instfields(TOKEN idlist, TOKEN typetok) {
  /* printf("instfields\n");
  fflush(stdout); */
  SYMBOL type_sym = typetok->symtype;
  TOKEN list = idlist;
  while (list != NULL) {
    list->symtype = type_sym;
    list = list->link;
  }
  return idlist;
}


/* instpoint will install a pointer type in symbol table */
TOKEN instpoint(TOKEN tok, TOKEN typename) {
  /* printf("instpoint\n");
  fflush(stdout); */

  SYMBOL typesym = searchins(typename->stringval);

  SYMBOL pointsym = makesym("");
  pointsym->kind = POINTERSYM;
  pointsym->datatype = typesym;
  pointsym->basicdt = POINTER;
  pointsym->size = basicsizes[POINTER];

  tok->basicdt = POINTER;
  tok->symtype = pointsym;

  return tok;
}


/* instrec will install a record definition. Each token in the linked list
argstok has a pointer its type. rectok is just a trash token to be
used to return the result in its symtype */
TOKEN instrec(TOKEN rectok, TOKEN argstok) {
  SYMBOL record_sym = makesym("");
  record_sym->kind = RECORDSYM;
  int num = 0;
  int next = 0;
  int align;

  SYMBOL prev = NULL;

  while (argstok != NULL) {
    align = alignsize(argstok->symtype);
    SYMBOL field = makesym(argstok->stringval);
    field->size = argstok->symtype->size;
    field->datatype = argstok->symtype;
    field->offset = wordaddress(next, align);
    next = field->offset + field->size;
    if (num == 0) {
      record_sym->datatype = field;
      prev = field;
    } else {
      prev->link = field;
      prev = field;
    }
    field->link = NULL;
    num++;
    argstok = argstok->link;
  }

  record_sym->size = wordaddress(next, 16);
  rectok->symtype = record_sym;

  if (DEBUG & DB_INSTREC) {
    printf("instrec\n");
    dbugprinttok(rectok);
    fflush(stdout);
  }
  return rectok;
}


/* insttype will install a type name in symbol table.
typetok is a token containing symbol table pointers. */
void insttype(TOKEN typename, TOKEN typetok) {
  SYMBOL type_sym = searchins(typename->stringval);
  type_sym->kind = TYPESYM;
  type_sym->size = typetok->symtype->size;
  type_sym->datatype = typetok->symtype;
  type_sym->basicdt = typetok->symtype->basicdt;
}


/* instconst installs a constant in the symbol table */
void instconst(TOKEN idtok, TOKEN consttok) {
  SYMBOL sym = insertsym(idtok->stringval);
  sym->basicdt = consttok->basicdt;
  sym->kind = CONSTSYM;
  if (sym->basicdt == INTEGER) {
    sym->constval.intnum = consttok->intval;
  } else if (sym->basicdt == REAL) {
    sym->constval.realnum = consttok->realval;
  }
  if (DEBUG & DB_INSTCONST) {
    printf("install const\n");
  }
}


/* install variables in symbol table */
void instvars(TOKEN idlist, TOKEN typetok)
{ 
  SYMBOL sym, typesym; int align;
  /* printf("instvars = %d\n", typetok->symtype != NULL); */
  typesym = typetok->symtype;
  align = alignsize(typesym);
  while ( idlist != NULL ) /* for each id */
  { 
    sym = insertsym(idlist->stringval);
    sym->kind = VARSYM;
    sym->offset = /* "next" */
    wordaddress(blockoffs[blocknumber], align);
    sym->size = typesym->size;
    blockoffs[blocknumber] = /* "next" */
    sym->offset + sym->size;
    sym->datatype = typesym;
    sym->basicdt = typesym->basicdt;
    idlist = idlist->link;
  };
  /* printf("instvars\n");
  fflush(stdout); */
}


/* findid finds an identifier in the symbol table, sets up symbol table
pointers, changes a constant to its number equivalent */
TOKEN findid(TOKEN tok)
{ /* the ID token */
  SYMBOL sym = searchst(tok->stringval);
  tok->symentry = sym;

  SYMBOL typ = sym->datatype;
  tok->symtype = typ;

  if (sym->kind == CONSTSYM) {
    if (sym->basicdt == INTEGER) {
      tok->basicdt = INTEGER;
      tok->tokentype = NUMBERTOK;
      tok->intval = sym->constval.intnum;
    } else if (sym->basicdt == REAL) {
      tok->basicdt = REAL;
      tok->tokentype = NUMBERTOK;
      tok->realval = sym->constval.realnum;
    }
  return tok;
  }

  if ( typ->kind == BASICTYPE || typ->kind == POINTERSYM) {
      tok->basicdt = typ->basicdt;
  }
  /* printf("findid\n");
  fflush(stdout); */
  return tok;
}


/* findtype looks up a type name in the symbol table, puts the pointer
to its type into tok->symtype, returns tok. */
TOKEN findtype(TOKEN tok)
{
    SYMBOL sym;
    sym = searchst(tok->stringval);
    if ( sym->kind == BASICTYPE) {
      tok->symtype = sym;
    } else if ( sym->kind == TYPESYM) {
      tok->symtype = sym->datatype;
    } else {  
      dbugprinttok(tok);
    };
  return tok;
}


/* copytok makes a new token that is a copy of origtok */
TOKEN copytok(TOKEN origtok) {
  TOKEN tok = talloc();
  memcpy(tok, origtok, sizeof(struct tokn));
  return tok;
}


/* makeintc makes a new integer number token with num as its value */
TOKEN makeintc(int num)
{
  TOKEN tok = talloc();
  tok->tokentype = NUMBERTOK;
  tok->basicdt = INTEGER;
  tok->intval = num;
  /* printf("makeintc\n");
  fflush(stdout); */
  return tok;
}


/* makelabel makes a new label, using labelnumber++ */
TOKEN makelabel()
{
  TOKEN tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = LABELOP;
  tok->operands = makeintc(labelnumber);
  labelnumber++;
  /* printf("makelabel\n");
  fflush(stdout); */
  return tok;
}


/* makegoto makes a GOTO operator to go to the specified label.
The label number is put into a number token. */
TOKEN makegoto(int num){
  TOKEN tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = GOTOOP;
  tok->operands = makeintc(num);
  /* printf("makegoto\n");
  fflush(stdout); */
  return tok;
}


/* makerepeat makes structures for a repeat statement.
tok and tokb are (now) unused tokens that are recycled. */
TOKEN makerepeat(TOKEN tok, TOKEN statements, TOKEN tokb, TOKEN expr) {
  int labelnum = labelnumber;
  TOKEN label = makelabel ();
  tok = makeprogn (tok, label);

  TOKEN s = tokb;
  s = makeprogn (s, statements);
  TOKEN gototok = makegoto (labelnum);
  TOKEN nulltok = makeprogn ((TOKEN) talloc(), NULL);
  TOKEN check = talloc();
  check = makeif(check, expr, nulltok, gototok);

  label->link = s;
  nulltok->link = gototok;
  s->link = check;
  if (DEBUG && DB_MAKEREPEAT) {
    printf("make repeat\n");
    dbugprinttok(tok);
  }
  return tok;
}


/* makefor makes structures for a for statement.
sign is 1 for normal loop, -1 for downto.
asg is an assignment statement, e.g. (:= i 1)
endexpr is the end expression
tok, tokb and tokc are (now) unused tokens that are recycled. */
TOKEN makefor(int sign, TOKEN tok, TOKEN asg, TOKEN tokb, TOKEN endexpr, TOKEN tokc, TOKEN statement)
{
  int labelnum = labelnumber;
  tok = makeprogn (tok, asg);
  TOKEN label = makelabel();
  TOKEN goto_ = makegoto(labelnum);
  asg->link = label;

  TOKEN check = talloc();
  TOKEN s = talloc();
  s = makeprogn (s, statement);

  TOKEN ident = copytok(asg->operands);
  TOKEN ident2 = copytok(asg->operands);
  TOKEN ident3 = copytok(asg->operands);

  TOKEN comparison = 0;
  TOKEN step = 0;

  TOKEN assign = makeop(ASSIGNOP);
  if (sign == 1) {
    comparison = makeop(LEOP);
    step = makeop(PLUSOP);
  } else {
    comparison = makeop(GEOP);
    step = makeop(MINUSOP);
  }

  check = makeif(check, comparison, s, NULL);

  ident->link = endexpr;
  comparison->operands = ident;
  ident3->link = makeintc(1);
  step->operands = ident3;
  ident2->link = step;

  assign->link = goto_;
  assign->operands = ident2;
  statement->link = assign;

  label->link = check;
  check->operands = comparison;
  comparison->link = s;
  if (DEBUG && DB_MAKEFOR) {
    printf("makefor\n");
    dbugprinttok(tok);
  }
  return tok;
}


/* wordaddress pads the offset n to be a multiple of wordsize.
wordsize should be 4 for integer, 8 for real and pointers,
16 for records and arrays */
int wordaddress(int n, int wordsize)
{ return ((n + wordsize - 1) / wordsize) * wordsize; }


void yyerror (char const *s)
{ fprintf (stderr, "%s\n", s); }


int main(void) /* */
{ int res;
  initsyms();
  res = yyparse();
  printst(); /* to shorten, change to: printstlevel(1); */
  printf("yyparse result = %8d\n", res);
  if (DEBUG & DB_PARSERES) dbugprinttok(parseresult);
  ppexpr(parseresult); /* Pretty-print the result tree */
  /* uncomment following to call code generator. */

   gencode(parseresult, blockoffs[blocknumber], labelnumber);
}
