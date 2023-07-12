/* lex1.c         14 Feb 01; 31 May 12; 11 Jan 18       */

/* This file contains code stubs for the lexical analyzer.
   Rename this file to be lexanc.c and fill in the stubs.    */

/* Copyright (c) 2018 Gordon S. Novak Jr. and
   The University of Texas at Austin. */

/*
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include "token.h"
#include "lexan.h"

/* This file will work as given with an input file consisting only
   of integers separated by blanks:
   make lex1
   lex1
   12345 123    345  357
   */

char * op[] = {"+", "-", "*", "/", ":=", "=", "<>", "<", "<=", ">=", ">", "^", ".",
               "and", "or", "not", "div", "mod", "in"};

char * delim[] = {",", ";", ":", "(", ")", "[", "]", ".."};

char * reserved[] = {"array", "begin", "case", "const", "do",
			"downto", "else", "end", "file", "for", "function", "goto", "if",
			"label", "nil", "of", "packed", "procedure", "program", "record",
			"repeat", "set", "then", "to", "type", "until", "var", "while",
			"with"};

/* Skip blanks and whitespace.  Expand this function to skip comments too. */
void skipblanks ()
  { int c;
    int c2; 
    while ((c = peekchar()) != EOF) {
      // for whitespace
      if (c == ' ' || c == '\n' || c == '\t') {
        getchar(); 
      }
      // for comments
      else if (c == '{') {
        getchar();
        // check next char to find corresponding bracket
        while ((c = peekchar()) != EOF) {
          if (c == '}') {
            getchar();
            break;
          }
          getchar();
        }
      } else if (c == '(' && (c2 = peek2char()) == '*' && c2 != EOF ) {
        getchar();
        getchar();
        while ((c = peekchar()) !=  EOF && (c2 = peek2char()) != EOF){
          if (c == '*' || c2 == ')') {
            getchar();
            getchar();
            break;
          }
          getchar();
        }
      }
      else {
        break;
      }
    } 
  }  

int op_search (char * token) {
  int size = sizeof(op) / sizeof(char *);
  for (int i = 0; i < size ; i++) {
    if (strcmp(token, op[i]) == 0) {
      return i + 1;
    }
  }
  return 0;
}

int res_search (char * token) {
  int size = sizeof(reserved) / sizeof(char *);
  for (int i = 0; i < size ; i++) {
    if (strcmp(token, reserved[i]) == 0) {
      return i + 1;
    }
  }
  return 0;
}


/* Get identifiers and reserved words */
TOKEN identifier (TOKEN tok)
  { int c;
    int numc = 0;
    char string[16];
    int value = 0;
    if ((c = peekchar()) != EOF && CHARCLASS[c] == ALPHA) {
		  c = getchar();
    }
		string[numc++] = c;
		while ((c = peekchar()) != EOF && (CHARCLASS[c] == ALPHA || CHARCLASS[c] == NUMERIC)) {
			c = getchar();
			if (numc < 15) {
				string[numc++] = c;
			}
		}
    string[numc] = 0;
    // reserve or operator not then identifier
    // how to get correct lookup value
    if ((value = res_search(string)) != 0) {
			tok->tokentype = RESERVED;
			tok->whichval = value;
		} else if ((value = op_search(string)) != 0) {
			tok->tokentype = OPERATOR;
			tok->whichval = value;
		} else {
			tok->tokentype = IDENTIFIERTOK;
			strcpy(tok->stringval, string);
    }
    return tok;
  }

TOKEN getstring (TOKEN tok)
  {
    }

TOKEN special (TOKEN tok)
  {
    }

/* Get and convert unsigned numbers of all types. */
TOKEN number (TOKEN tok)
  { long num;
    int  c, charval;
    num = 0;
    while ( (c = peekchar()) != EOF
            && CHARCLASS[c] == NUMERIC)
      {   c = getchar();
          charval = (c - '0');
          num = num * 10 + charval;
        }
    tok->tokentype = NUMBERTOK;
    tok->basicdt = INTEGER;
    tok->intval = num;
    return (tok);
  }

