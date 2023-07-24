%{     /* pars1.y    Pascal Parser      Gordon S. Novak Jr.  ; 08 Jul 22   */

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
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.

; You should have received a copy of the GNU General Public License
; along with this program; if not, see <http://www.gnu.org/licenses/>.
  */


/* NOTE:   Copy your lexan.l lexical analyzer to this directory.      */

       /* To use:
                     make pars1y              has 1 shift/reduce conflict
                     pars1y                   execute the parser
                     i:=j .
                     ^D                       control-D to end input

                     pars1y                   execute the parser
                     begin i:=j; if i+j then x:=a+b*c else x:=a*b+c; k:=i end.
                     ^D

                     pars1y                   execute the parser
                     if x+y then if y+z then i:=j else k:=2.
                     ^D

           You may copy pars1.y to be parse.y and extend it for your
           assignment.  Then use   make parser   as above.
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

%token IDENTIFIER STRING NUMBER   /* token types */

%token PLUS MINUS TIMES DIVIDE    /* Operators */
%token ASSIGN EQ NE LT LE GE GT POINT DOT AND OR NOT DIV MOD IN

%token COMMA                      /* Delimiters */
%token SEMICOLON COLON LPAREN RPAREN LBRACKET RBRACKET DOTDOT

%token ARRAY BEGINBEGIN           /* Lex uses BEGIN */
%token CASE CONST DO DOWNTO ELSE END FILEFILE FOR FUNCTION GOTO IF LABEL NIL
%token OF PACKED PROCEDURE PROGRAM RECORD REPEAT SET THEN TO TYPE UNTIL
%token VAR WHILE WITH

%right thenthen ELSE // Same precedence, but "shift" wins.

%%

program    :  PROGRAM IDENTIFIER LPAREN idlist RPAREN SEMICOLON vblock DOT  /* change this! */  { parseresult = makeprogram($2, $4, $7); }
             ;
  idlist     :  IDENTIFIER COMMA idlist { $$ = cons($1, $3); }
             |  IDENTIFIER              { $$ = cons($1, NULL); }
             ;
  vblock     :  VAR varspecs block      { $$ = $3; }
             |  block
             ;
  varspecs   :  vargroup SEMICOLON varspecs
             |  vargroup SEMICOLON
             ;
  vargroup   :  idlist COLON type       { instvars($1, $3); }
             ;
  type       :  simpletype
             ;
  simpletype :  IDENTIFIER              { $$ = findtype($1); }
             ;
  block      :  BEGINBEGIN statement endpart   { $$ = makeprogn($1,cons($2, $3)); }
             ;
  statement  :  BEGINBEGIN statement endpart   { $$ = makeprogn($1,cons($2, $3)); }
             |  IF expr THEN statement endif   { $$ = makeif($1, $2, $4, $5); }
             |  funcall
             |  assignment
             |  FOR assignment TO expr DO statement	    { $$ = makefor(1, $1, $2, $3, $4, $5, $6); }
             |  FOR assignment DOWNTO expr DO statement	{ $$ = makefor(-1, $1, $2, $3, $4, $5, $6); } // need this?
             ;
  endpart    :  SEMICOLON statement endpart    { $$ = cons($2, $3); }
             |  END                            { $$ = NULL; }
             ;
  endif      :  ELSE statement                 { $$ = $2; }
             |  /* empty */                    { $$ = NULL; }  %prec thenthen
             ;
  assignment :  variable ASSIGN expr           { $$ = binop($2, $1, $3); }
             ;
  funcall    :  IDENTIFIER LPAREN expr_list RPAREN   { $$ = makefuncall($2, $1, $3); }
             ;
  expr_list  :  expr COMMA expr_list           { $$ = cons($1, $3); }
             |  expr
             ;
  expr       :  expr PLUS term                 { $$ = binop($2, $1, $3); }
             |  term 
             ;
  term       :  term TIMES factor              { $$ = binop($2, $1, $3); }
             |  factor
             ;
  variable   :  IDENTIFIER
             ;
  factor     :  LPAREN expr RPAREN             { $$ = $2; }
             |  variable
             |  STRING
             |  NUMBER
             ;
%%

/* You should add your own debugging flags below, and add debugging
   printouts to your programs.

   You will want to change DEBUG to turn off printouts once things
   are working.
  */

#define DEBUG        31             /* set bits here for debugging, 0 = off  */
#define DB_CONS       1             /* bit to trace cons */
#define DB_BINOP      2             /* bit to trace binop */
#define DB_MAKEIF     4             /* bit to trace makeif */
#define DB_MAKEPROGN  8             /* bit to trace makeprogn */
#define DB_PARSERES  16             /* bit to trace parseresult */

 int labelnumber = 0;  /* sequential counter for internal label numbers */

   /*  Note: you should add to the above values and insert debugging
       printouts in your routines similar to those that are shown here.     */

/* cons links a new item onto the front of a list.  Equivalent to a push.
   (cons 'a '(b c))  =  (a b c)    */
TOKEN cons(TOKEN item, TOKEN list)           /* add item to front of list */
  { item->link = list;
    /* if (DEBUG & DB_CONS)
       { printf("cons\n");
         dbugprinttok(item);
         dbugprinttok(list);
       }; */
    return item;
  }

/* binop links a binary operator op to two operands, lhs and rhs. */
TOKEN binop(TOKEN op, TOKEN lhs, TOKEN rhs)        /* reduce binary operator */
  { op->operands = lhs;          /* link operands to operator       */
    lhs->link = rhs;             /* link second operand to first    */
    rhs->link = NULL;            /* terminate operand list          */
    /* if (DEBUG & DB_BINOP)
       { printf("binop\n");
         dbugprinttok(op);
         dbugprinttok(lhs);
         dbugprinttok(rhs);
       }; */
    return op;
  }

/* makeop makes a new operator token with operator number opnum.
   Example:  makeop(FLOATOP)  */
TOKEN makeop(int opnum){
    TOKEN tok = talloc();
    tok->tokentype = OPERATOR;
    tok->whichval = opnum;
    return tok;
}

/* makefuncall makes a FUNCALL operator and links it to the fn and args.
   tok is a (now) unused token that is recycled. */
TOKEN makefuncall(TOKEN tok, TOKEN fn, TOKEN args) {
	tok->tokentype = OPERATOR;
  tok->whichval = FUNCALLOP;
  tok->operands = fn;
  fn->link = args;
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
  {  tok->tokentype = OPERATOR;  /* Make it look like an operator   */
     tok->whichval = IFOP;
     if (elsepart != NULL) elsepart->link = NULL;
     thenpart->link = elsepart;
     exp->link = thenpart;
     tok->operands = exp;
     /* if (DEBUG & DB_MAKEIF)
        { printf("makeif\n");
          dbugprinttok(tok);
          dbugprinttok(exp);
          dbugprinttok(thenpart);
          dbugprinttok(elsepart);
        }; */
     return tok;
   }

/* makeprogn makes a PROGN operator and links it to the list of statements.
   tok is a (now) unused token that is recycled. */
TOKEN makeprogn(TOKEN tok, TOKEN statements)
  {  tok->tokentype = OPERATOR;
     tok->whichval = PROGNOP;
     tok->operands = statements;
     /* if (DEBUG & DB_MAKEPROGN)
       { printf("makeprogn\n");
         dbugprinttok(tok);
         dbugprinttok(statements);
       }; */
     return tok;
   }

/* install variables in symbol table */
void instvars(TOKEN idlist, TOKEN typetok)
  {  SYMBOL sym, typesym; int align;
     typesym = typetok->symtype;
     align = alignsize(typesym);
     while ( idlist != NULL )   /* for each id */
       {  sym = insertsym(idlist->stringval);
          sym->kind = VARSYM;
          sym->offset =     /* "next" */
              wordaddress(blockoffs[blocknumber],
                          align);
          sym->size = typesym->size;
          blockoffs[blocknumber] =   /* "next" */
                         sym->offset + sym->size;
          sym->datatype = typesym;
          sym->basicdt = typesym->basicdt;
          idlist = idlist->link;
        };
  }

/* findid finds an identifier in the symbol table, sets up symbol table
   pointers, changes a constant to its number equivalent */
TOKEN findid(TOKEN tok) 
{ /* the ID token */
SYMBOL sym = searchst(tok->stringval);
tok->symentry = sym;
SYMBOL typ = sym->datatype;
tok->symtype = typ;
if ( typ->kind == BASICTYPE ||
     typ->kind == POINTERSYM)
    tok->basicdt = typ->basicdt;
return tok; 
}

/* findtype looks up a type name in the symbol table, puts the pointer
   to its type into tok->symtype, returns tok. */
TOKEN findtype(TOKEN tok) 
{
  SYMBOL sym = searchst(tok->stringval);
  tok->symtype = sym;
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
  return tok;
}

/* makegoto makes a GOTO operator to go to the specified label.
   The label number is put into a number token. */
TOKEN makegoto(int num){
  TOKEN tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = GOTOOP;
  tok->operands = makeintc(num);
  return tok;
}

/* makefor makes structures for a for statement.
   sign is 1 for normal loop, -1 for downto.
   asg is an assignment statement, e.g. (:= i 1)
   endexpr is the end expression
   tok, tokb and tokc are (now) unused tokens that are recycled. */
TOKEN makefor(int sign, TOKEN tok, TOKEN asg, TOKEN tokb, TOKEN endexpr,
              TOKEN tokc, TOKEN statement)
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
  return tok;
}

/* wordaddress pads the offset n to be a multiple of wordsize.
   wordsize should be 4 for integer, 8 for real and pointers,
   16 for records and arrays */   
int wordaddress(int n, int wordsize)
  { return ((n + wordsize - 1) / wordsize) * wordsize; }
 
void yyerror (char const *s)
{
  fprintf (stderr, "%s\n", s);
}

int main(void)          /*  */
  { int res;
    initsyms();
    res = yyparse();
    printst();       /* to shorten, change to:  printstlevel(1);  */
    // printf("yyparse result = %8d\n", res);
    if (DEBUG & DB_PARSERES) dbugprinttok(parseresult);
    ppexpr(parseresult);           /* Pretty-print the result tree */
    /* uncomment following to call code generator. */
     /* 
    gencode(parseresult, blockoffs[blocknumber], labelnumber);
 */
  }
