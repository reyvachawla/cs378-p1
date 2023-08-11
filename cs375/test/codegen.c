/* codgen.c       Generate Assembly Code for x86         07 May 18   */

/* Copyright (c) 2018 Gordon S. Novak Jr. and The University of Texas at Austin
    */

/* Starter file for CS 375 Code Generation assignment.           */
/* Written by Gordon S. Novak Jr.                  */

/* This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License (file gpl.text) for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA. */

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "token.h"
#include "symtab.h"
#include "lexan.h"
#include "genasm.h"
#include "codegen.h"
#include "pprint.h"

void genc(TOKEN code);

/* Set DEBUGGEN to 1 for debug printouts of code generation */
#define DEBUGGEN 0

int nextlabel;    /* Next available label number */
int stkframesize;   /* total stack frame size */
int registers[32];

int int_op[16];
int point_op[16];
int real_op[16];
int jmp_op[16];

/* Top-level entry for code generator.
   pcode    = pointer to code:  (program foo (output) (progn ...))
   varsize  = size of local storage in bytes
   maxlabel = maximum label number used so far

Add this line to the end of your main program:
    gencode(parseresult, blockoffs[blocknumber], labelnumber);
The generated code is printed out; use a text editor to extract it for
your .s file.
         */

void gencode(TOKEN pcode, int varsize, int maxlabel)
  {  tablefiller();
    TOKEN name, code;
     name = pcode->operands;
     code = name->link->link;
     nextlabel = maxlabel + 1;
     stkframesize = asmentry(name->stringval,varsize);
     genc(code);
     asmexit(name->stringval);
  }

void tablefiller() {
  int_op[PLUSOP] = ADDL;
  int_op[MINUSOP] = SUBL;
  int_op[TIMESOP] = IMULL;
  int_op[DIVIDEOP] = DIVL;
  int_op[ANDOP] = ANDL;
  // int_op[NOTOP] = NEGL; // correct?
  int_op[OROP] = ORL;
  int_op[EQOP] = CMPL;
  int_op[NEOP] = CMPL;
  int_op[LTOP] = CMPL;
  int_op[LEOP] = CMPL;
  int_op[GEOP] = CMPL;
  int_op[GTOP] = CMPL;

  point_op[PLUSOP] = ADDQ;
  point_op[MINUSOP] = SUBQ;
  point_op[TIMESOP] = IMULQ;
  point_op[ANDOP] = ANDQ;
  // point_op[NOTOP] = NEGQ;
  point_op[OROP] = ORQ;
  point_op[NOTOP] = NOTQ;
  point_op[EQOP] = CMPQ;
  point_op[NEOP] = CMPQ;
  point_op[LTOP] = CMPQ;
  point_op[LEOP] = CMPQ;
  point_op[GEOP] = CMPQ;
  point_op[GTOP] = CMPQ;

  real_op[PLUSOP] = ADDSD;
  real_op[MINUSOP] = SUBSD;
  real_op[TIMESOP] = MULSD;
  real_op[DIVIDEOP] = DIVSD;
  real_op[NOTOP] = NEGSD; // correct?
  real_op[EQOP] = CMPSD;
  real_op[NEOP] = CMPSD;
  real_op[LTOP] = CMPSD;
  real_op[LEOP] = CMPSD;
  real_op[GEOP] = CMPSD;
  real_op[GTOP] = CMPSD;

  jmp_op[EQOP] = JE;
  jmp_op[NEOP] = JNE;
  jmp_op[LTOP] = JL;
  jmp_op[LEOP] = JLE;
  jmp_op[GEOP] = JGE;
  jmp_op[GTOP] = JG;
}

/* Trivial version: always returns RBASE + 0 */
/* Get a register.   */
/* Need a type parameter or two versions for INTEGER or REAL */
int getreg(int kind)
  {
    int index;
    if (kind == WORD) {
      for (int i = RBASE; i <= RMAX; i++) {
        // 0 means empty reg
        if (registers[i] == 0) {
          used(i);
          index = i;
          break;
        }
      }
    } else if (kind == FLOAT) {
      for (int i = FBASE; i <= FMAX; i++) {
        if (registers[i] == 0) {
          used(i);
          index = i;
          break;
        }
      }
    }
    if (DEBUGGEN) {
      printf("getreg\n");
      fflush(stdout);
    }
    return index;
  }

/* Clear register used tables to mark all registers free.  */
void clearreg() {
  for (int i = 0; i < 32; i++) {
    unused(i);
  }
  if (DEBUGGEN) {
      printf("cleararreg\n");
      fflush(stdout);
    }
}

/* Mark a register unused */
void unused(int reg) {
  registers[reg] = 0;
  if (DEBUGGEN) {
      printf("unused\n");
      fflush(stdout);
    }
}

/* Mark a register used */
void used(int reg) {
  registers[reg] = 1;
  if (DEBUGGEN) {
      printf("used\n");
      fflush(stdout);
    }
}

/* Trivial version */
/* Generate code for arithmetic expression, return a register number */
int genarith(TOKEN code)
  {   int num, reg, reg2, offs, label;
      float float_num;
      TOKEN lhs, rhs;
     if (DEBUGGEN)
       { printf("genarith\n");
	       dbugprinttok(code);
         fflush(stdout);
       };
      switch ( code->tokentype ) { 
        case NUMBERTOK:
           switch (code->basicdt) { 
          case INTEGER:
		        num = code->intval;
		        reg = getreg(WORD);
		        if ( num >= MINIMMEDIATE && num <= MAXIMMEDIATE )
		        asmimmed(MOVL, num, reg);
		        break;
	        case REAL:
            float_num = code->realval;
            reg = getreg(FLOAT);
            int label = nextlabel++;
            makeflit (float_num, label);
            asmldflit(MOVSD, label, reg);
            break;
          case POINTER: // needed?
          num = code->intval;
          reg = getreg(WORD);
          if ( num >= MINIMMEDIATE && num <= MAXIMMEDIATE )
		        asmimmed(MOVQ, num, reg);
	       }
	   break;
       case IDENTIFIERTOK:
       // loading
       offs = code->symentry->offset - stkframesize;
       switch (code->basicdt) {
        case INTEGER:
          reg = getreg(WORD);
          asmld(MOVL, offs, reg, code->stringval);
        break;
        case POINTER:
          reg = getreg(WORD);
          asmld(MOVQ, offs, reg, code->stringval); // correct?
        break;
        case REAL:
          reg = getreg(FLOAT);
          asmld(MOVSD, offs, reg, code->stringval);
        break;
       }
	   break;
      case STRINGTOK: 
        label = nextlabel++;  
        makeblit(code->stringval, label);
        reg = EDI;
        asmlitarg(label, reg);
        break;
      case OPERATOR:
        if (code->whichval == FUNCALLOP) {
          reg = genfun(code);
        }
        else if (code->whichval == FLOATOP) {
          lhs = code->operands;
          reg = getreg(FLOAT);
          reg2 = genarith(lhs);
          asmfloat(reg2, reg);
          unused(reg2);
        } else if (code->whichval == FIXOP) {
          lhs = code->operands;
          reg = getreg(WORD);
          reg2 = genarith(lhs);
          asmfix(reg2, reg);
          unused(reg2);
        }
        else if (code->basicdt == INTEGER) {
          lhs = code->operands;
          rhs = code->operands->link;
          reg = genarith(lhs);
          if (rhs) {
            if (funcallin(rhs)) {
              asmsttemp(reg);
              unused(reg);
              reg2 = genarith(rhs);
              asmldtemp(reg);
              asmrr(int_op[code->whichval], reg2, reg);
              unused(reg2);
            } else {
              reg2 = genarith(rhs);     
              asmrr(int_op[code->whichval], reg2, reg); 
              unused(reg2);
            }
          } else {
            reg2 = getreg(FLOAT);
            asmfneg(reg, reg2);
            reg = reg2;
            unused(reg2);
          }
        }
        else if (code->basicdt == REAL) {
          lhs = code->operands;
          rhs = code->operands->link;
          reg = genarith(lhs);
          if (rhs) {
            if (funcallin(rhs)) {
              asmsttemp(reg);
              unused(reg);
              reg2 = genarith(rhs);
              asmldtemp(reg);
              asmrr(real_op[code->whichval], reg2, reg);
              unused(reg2);
            } else {
              reg2 = genarith(rhs);     
              asmrr(real_op[code->whichval], reg2, reg); 
              unused(reg2);
            }
          } else {
            reg2 = getreg(FLOAT);
            asmfneg(reg, reg2);
            reg = reg2;
            unused(reg2);
          }
        } 
	  break;
    };
    return reg;
  }

/* test if there is a function call within code: 1 if true, else 0 */
int funcallin(TOKEN code) {
  // change to while loop?
   if (code->whichval == FUNCALLOP) {
    return 1;
  } else if (code->link) {
    return funcallin(code->link);
  } else {
    return 0;
  }
  if (DEBUGGEN) {
      printf("funcallin\n");
      fflush(stdout);
    }
}

/* Generate code for a Statement from an intermediate-code form */
void genc(TOKEN code)
  {  TOKEN tok, lhs, rhs;
     int reg, offs;
     SYMBOL sym;
     clearreg();
     if (DEBUGGEN)
       { printf("genc\n");
	      dbugprinttok(code);
        fflush(stdout);
       };
     if ( code->tokentype != OPERATOR )
        { printf("Bad code token");
	        dbugprinttok(code);
          fflush(stdout);
	      };
     switch ( code->whichval )
       { case PROGNOP:
	   tok = code->operands;
	   while ( tok != NULL )
	     {  genc(tok);
		tok = tok->link;
	      };
	   break;
	 case ASSIGNOP:                   /* Trivial version: handles I := e */
	   lhs = code->operands;
	   rhs = lhs->link;
	   reg = genarith(rhs);              /* generate rhs into a register */
	   sym = lhs->symentry;              /* assumes lhs is a simple var  */
	   offs = sym->offset - stkframesize; /* net offset of the var   */
           switch (code->basicdt)            /* store value into lhs  */
             { case INTEGER:
                 asmst(MOVL, reg, offs, lhs->stringval);
                 break;
               case REAL:
                 asmst(MOVSD, reg, offs, lhs->stringval);
                 break;
                case POINTER:
                asmst(MOVQ, reg, offs, lhs->stringval);
                 break;
             };
           break;
	 case FUNCALLOP:
    genfun(code);
	   break;
	 case GOTOOP:
    asmjump (JMP,code->operands->intval);
	   break;
	 case LABELOP:
     asmlabel(code->operands->intval);
	   break;
	 case IFOP:
    tok = code->operands;
    genarith(tok);
    lhs = tok->link; // then
    rhs = tok->link->link; // else
    int label1 = nextlabel++;
    int end = nextlabel++;
    int op = tok->whichval;
    asmjump(jmp_op[op], label1);
    if (rhs) {
      genc(rhs);
    }
    asmjump(JMP, end);
    asmlabel(label1);
    genc(lhs);
    asmlabel(end);
	  break;
	 };
  }

  /* Generate code for a function call */
int genfun(TOKEN code) {
  // check
  TOKEN tok = code->operands; //FUNCTION
    TOKEN lhs = tok->link;  //FIRST ARGUMENT
    int count = 0;
    while (lhs) {
      genarith(lhs);        
      lhs = lhs->link;
      count ++;
    }

    asmcall(tok->stringval);  
    SYMBOL sym = searchst(tok->stringval);

    if (DEBUGGEN) {
      printf("genfunc\n");
      dbugprinttok(code);
      fflush(stdout);
    }
    if (sym->datatype->basicdt == REAL) {
      return XMM0;
    } else if (sym->datatype->basicdt == INTEGER) {
      return EAX;
    } else {
      return RAX;
    }
}
