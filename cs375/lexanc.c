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

double powers[] = {1e0, 1e1, 1e2, 1e3, 1e4, 1e5, 1e6, 1e7, 1e8, 1e9, 1e10, 1e11,
         1e12, 1e13, 1e14, 1e15, 1e16, 1e17, 1e18, 1e19, 1e20, 1e21, 1e22, 1e23, 
         1e24, 1e25, 1e26, 1e27, 1e28, 1e29, 1e30, 1e31, 1e32, 1e33, 1e34, 1e35, 
         1e36, 1e37, 1e38, 1e39, 1e40, 1e41, 1e42, 1e43, 1e44, 1e45,
		     1e46, 1e47};

/* Skip blanks and whitespace.  Expand this function to skip comments too. */
void skipblanks ()
{   int c;
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
    } else if (c == '(' && (c2 = peek2char()) != EOF && c2 == '*') {
      getchar();
      getchar();
      // check next char to find corresponding bracket
      while ((c = peekchar()) !=  EOF && (c2 = peek2char()) != EOF){
        if (c == '*' && c2 == ')') {
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

/* Helper method to search for value of operator from given token
   Returns 0 if not found */
int op_search (char * token) 
{
  for (int i = 1; i <= 19 ; i++) {
    if (strcmp(token, op[i - 1]) == 0) {
      return i;
    }
  }
  return 0;
}

/* Helper method to search for value of reserve word from given token
   Returns 0 if not found */
int res_search (char * token) 
{
  for (int i = 1; i <= 29 ; i++) {
    if (strcmp(token, reserved[i - 1]) == 0) {
      return i;
    }
  }
  return 0;
}

/* Helper method to search for value of delimiter from given token
   Returns 0 if not found */
int delim_search (char * token) 
{
  for (int i = 1; i <= 8 ; i++) {
    if (strcmp(token, delim[i - 1]) == 0) {
      return i;
    }
  }
  return 0;
}


/* Get identifiers and reserved words */
TOKEN identifier (TOKEN tok)
{   int c;
  int numc = 0;
  char string[16];
  int value = 0;
  // checks if first char is a letter
  if ((c = peekchar()) != EOF && CHARCLASS[c] == ALPHA) {
    while ((c = peekchar()) != EOF && (CHARCLASS[c] == ALPHA || CHARCLASS[c] == NUMERIC)) {
      c = getchar();
      if (numc < 15) {
        string[numc] = c;
        numc++;
      }
    }
  }
  string[numc] = 0;
  // search for corresponding token type 
  if ((value = res_search(string)) != 0) {
    tok->tokentype = RESERVED;
    tok->whichval = value;
  } else if ((value = op_search(string)) != 0) {
    // word operators
    tok->tokentype = OPERATOR;
    tok->whichval = value;
  } else {
    tok->tokentype = IDENTIFIERTOK;
    strcpy(tok->stringval, string);
  }
  return tok;
}

/* Gets string from within quotes*/
TOKEN getstring (TOKEN tok)
{
  int c;
  int c2;
  char string[16];
  int numc = 0; 
  if ((c = peekchar()) != EOF && c == '\'') {
    getchar();
    while ((c = peekchar()) != EOF && (c2 = peek2char()) != EOF) {
      // if two quotes, keeps one
      if (c == '\'' && c2 == '\'') {
        c = getchar();
        if (numc < 15){
          string[numc] = c;
          numc++;
        }
        getchar();
      // checks for end of string
      } else if (c == '\'' && c2 != '\'') {
        getchar();
        break;
      } else {
        c = getchar();
        if (numc < 15) {
          string[numc] = c;
          numc++;
        }
      }
    }
    string[numc] = 0;
    tok->tokentype = STRINGTOK;
    strcpy(tok->stringval, string);
  }
  return tok;
}

/* Gets special tokens, including operators and delimiters*/
TOKEN special (TOKEN tok) 
{
  int c;
  int c2; 
  char special[3];
  int value = 0;
  int count = 0;
  while ((c = peekchar()) != EOF && CHARCLASS[c] == SPECIAL) {
    special[count] = c;
    count++;
    c2 = peek2char();
    if (c2 != EOF && CHARCLASS[c2] == SPECIAL) {
      special[count] = c2;
      count++;
      // if a delimiter of size 2, searches and then breaks loop
      if ((value = op_search(special)) != 0 || ((value = delim_search(special)) != 0)) {
        getchar();
        getchar();
        special[count] = 0;
        break;
      } else {
        getchar();
        count--;
        special[count] = 0;
        break;
      }
    } else {
      getchar();
      special[count] = 0;
      break;
    }
  }
  if ((value = delim_search(special)) != 0) {
      tok->tokentype = DELIMITER;
		  tok->whichval = value;
    } else if ((value = op_search(special)) != 0) {
      tok->tokentype = OPERATOR;
		  tok->whichval = value;
    } 
    return tok;
}

/* Get and convert unsigned numbers of all types. */
TOKEN number (TOKEN tok) 
{
  long num = 0;
  int c, c2, charval;
  int real = 0;
  int totaldigits = 0; 
  int numaftere = 0;
  int exponent = 0; 
  int powerindex = 0;
  int negative = 0;
  double full = 0;
  int boundnum = 0;
  while ((c = peekchar()) != EOF && c == '0') {
      getchar();
  }
  // first nonzero
  while ((c = peekchar()) != EOF && CHARCLASS[c] == NUMERIC) {
    c = getchar();
    charval = (c - '0');
    // checks against max and adjust exponent count and value accumulated accordingly
    if (num < __INT_MAX__) {
      num = num * 10 + charval;
      totaldigits++;
    } else {
      exponent++;
    }
  }
  // checks for decimal and handles parsing and adjusting value accumulated
  if (((c = peekchar()) != EOF) && c == '.' && ((c2 = peek2char()) != EOF) && CHARCLASS[c2] == NUMERIC) {
    real = 1;
    getchar();
    while (((c = peekchar()) != EOF) && CHARCLASS[c] == NUMERIC) {
      c = getchar();
      charval = (c - '0');
      if (charval == 0 && num == 0) {
        exponent--;
      } else if (totaldigits < 8) {
        num = num * 10 + charval;
        totaldigits++;
        exponent--;
      }
    }
  }
  // checks for e and sign 
  if ((c = peekchar()) != EOF && c == 'e') {
      getchar();
      real = 1;
      if ((c = peekchar()) != EOF && c == '+') {
        getchar();
      } else if ((c = peekchar()) != EOF && c == '-') {
        negative = 1;
        getchar();
      }
  }
  // adjust value found after 'e' symbol
  while (((c = peekchar()) != EOF) && CHARCLASS[c] == NUMERIC) {
    c = getchar();
    charval = (c - '0');
    numaftere = numaftere * 10 + charval;
  }
  if (negative == 1){
    numaftere *= -1;
  }
  // checking for floating error
  boundnum = numaftere + exponent + totaldigits - 1;
  if (boundnum > 38 || boundnum < -38) {
    numaftere = 0;
    exponent = -60;
  }
  if (real == 0) {
    tok->tokentype = NUMBERTOK;
    tok->basicdt = INTEGER;
    if (num > __INT_MAX__ ){
      printf("Integer number out of range\n");
      num = 0;
    }
    tok->intval = num;
    return (tok);
  } else {
    // calculates power needed to multiply accumulated value
    powerindex = exponent + numaftere;
    if (powerindex == -60) {
      printf("Floating number out of range\n");
    } else if (powerindex < 0) {
      powerindex *= -1;
      full = num / powers[powerindex];
    } else if (powerindex > 0) {
      full = num * powers[powerindex];
    }
  }
    tok->tokentype = NUMBERTOK;
	  tok->basicdt = REAL;
    tok->realval = full;
    return (tok);
}

