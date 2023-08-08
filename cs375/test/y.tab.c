/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.5.1"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parse.y"
 /* pars1.y Pascal Parser Gordon S. Novak Jr. ; 08 Jul 22 */


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



#line 152 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif


/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IDENTIFIER = 258,
    STRING = 259,
    NUMBER = 260,
    PLUS = 261,
    MINUS = 262,
    TIMES = 263,
    DIVIDE = 264,
    ASSIGN = 265,
    EQ = 266,
    NE = 267,
    LT = 268,
    LE = 269,
    GE = 270,
    GT = 271,
    POINT = 272,
    DOT = 273,
    AND = 274,
    OR = 275,
    NOT = 276,
    DIV = 277,
    MOD = 278,
    IN = 279,
    COMMA = 280,
    SEMICOLON = 281,
    COLON = 282,
    LPAREN = 283,
    RPAREN = 284,
    LBRACKET = 285,
    RBRACKET = 286,
    DOTDOT = 287,
    ARRAY = 288,
    BEGINBEGIN = 289,
    CASE = 290,
    CONST = 291,
    DO = 292,
    DOWNTO = 293,
    ELSE = 294,
    END = 295,
    FILEFILE = 296,
    FOR = 297,
    FUNCTION = 298,
    GOTO = 299,
    IF = 300,
    LABEL = 301,
    NIL = 302,
    OF = 303,
    PACKED = 304,
    PROCEDURE = 305,
    PROGRAM = 306,
    RECORD = 307,
    REPEAT = 308,
    SET = 309,
    THEN = 310,
    TO = 311,
    TYPE = 312,
    UNTIL = 313,
    VAR = 314,
    WHILE = 315,
    WITH = 316,
    thenthen = 317
  };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define STRING 259
#define NUMBER 260
#define PLUS 261
#define MINUS 262
#define TIMES 263
#define DIVIDE 264
#define ASSIGN 265
#define EQ 266
#define NE 267
#define LT 268
#define LE 269
#define GE 270
#define GT 271
#define POINT 272
#define DOT 273
#define AND 274
#define OR 275
#define NOT 276
#define DIV 277
#define MOD 278
#define IN 279
#define COMMA 280
#define SEMICOLON 281
#define COLON 282
#define LPAREN 283
#define RPAREN 284
#define LBRACKET 285
#define RBRACKET 286
#define DOTDOT 287
#define ARRAY 288
#define BEGINBEGIN 289
#define CASE 290
#define CONST 291
#define DO 292
#define DOWNTO 293
#define ELSE 294
#define END 295
#define FILEFILE 296
#define FOR 297
#define FUNCTION 298
#define GOTO 299
#define IF 300
#define LABEL 301
#define NIL 302
#define OF 303
#define PACKED 304
#define PROCEDURE 305
#define PROGRAM 306
#define RECORD 307
#define REPEAT 308
#define SET 309
#define THEN 310
#define TO 311
#define TYPE 312
#define UNTIL 313
#define VAR 314
#define WHILE 315
#define WITH 316
#define thenthen 317

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);





#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))

/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  4
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   256

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  63
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  39
/* YYNRULES -- Number of rules.  */
#define YYNRULES  98
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  188

#define YYUNDEFTOK  2
#define YYMAXUTOK   317


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,   110,   110,   112,   113,   115,   116,   118,   119,   120,
     122,   123,   124,   126,   127,   128,   129,   130,   131,   132,
     134,   135,   136,   137,   138,   140,   141,   143,   145,   146,
     148,   150,   151,   153,   154,   156,   158,   159,   161,   163,
     164,   166,   168,   170,   171,   173,   174,   176,   177,   179,
     180,   181,   182,   183,   185,   186,   187,   188,   190,   191,
     192,   194,   195,   197,   198,   200,   201,   202,   203,   204,
     205,   206,   207,   208,   209,   211,   212,   214,   215,   217,
     219,   221,   222,   223,   225,   226,   228,   229,   231,   232,
     234,   235,   236,   237,   239,   240,   241,   242,   243
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "IDENTIFIER", "STRING", "NUMBER", "PLUS",
  "MINUS", "TIMES", "DIVIDE", "ASSIGN", "EQ", "NE", "LT", "LE", "GE", "GT",
  "POINT", "DOT", "AND", "OR", "NOT", "DIV", "MOD", "IN", "COMMA",
  "SEMICOLON", "COLON", "LPAREN", "RPAREN", "LBRACKET", "RBRACKET",
  "DOTDOT", "ARRAY", "BEGINBEGIN", "CASE", "CONST", "DO", "DOWNTO", "ELSE",
  "END", "FILEFILE", "FOR", "FUNCTION", "GOTO", "IF", "LABEL", "NIL", "OF",
  "PACKED", "PROCEDURE", "PROGRAM", "RECORD", "REPEAT", "SET", "THEN",
  "TO", "TYPE", "UNTIL", "VAR", "WHILE", "WITH", "thenthen", "$accept",
  "program", "idlist", "sign", "unsigconst", "plus_op", "compare_op",
  "times_op", "numlist", "fields", "field_list", "label", "lblock",
  "cblock", "cdef", "tblock", "tdef", "vblock", "vardef", "block",
  "cdef_list", "tdef_list", "vardef_list", "constant", "type",
  "simpletype", "simtyp_list", "state_list", "statement", "endpart",
  "endif", "assignment", "funcall", "sim_expr", "expr_list", "expr",
  "term", "variable", "factor", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_int16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   317
};
# endif

#define YYPACT_NINF (-143)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-51)

#define yytable_value_is_error(Yyn) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -36,    26,    38,    22,  -143,    52,    32,    29,    52,    33,
    -143,    58,    20,    71,    61,    75,    52,    64,  -143,  -143,
    -143,  -143,    53,    70,    20,    88,   108,    28,    20,    28,
    -143,    63,  -143,  -143,   118,   103,    98,   -16,   101,   106,
     123,   114,    17,   115,   117,   107,  -143,    28,    20,    63,
    -143,   -14,  -143,  -143,  -143,  -143,  -143,   134,    28,  -143,
     134,  -143,  -143,    41,    72,   206,    82,  -143,    87,   120,
     160,    20,  -143,  -143,    28,  -143,   144,    28,   147,    71,
    -143,    61,    10,   116,    75,  -143,   116,    52,  -143,   138,
     219,  -143,  -143,    28,    28,  -143,   194,   206,  -143,  -143,
    -143,   134,  -143,  -143,  -143,  -143,  -143,  -143,  -143,    20,
      28,  -143,  -143,  -143,  -143,  -143,   134,    28,    20,    20,
      63,   225,  -143,   132,  -143,  -143,  -143,    23,  -143,  -143,
    -143,  -143,   137,   175,    52,   149,    52,   145,  -143,  -143,
    -143,  -143,  -143,  -143,    28,   174,   180,  -143,   206,   141,
      41,  -143,   225,  -143,  -143,  -143,  -143,  -143,  -143,  -143,
     153,   196,   156,   186,   173,   147,  -143,    20,    20,    20,
    -143,  -143,   191,   188,   116,    52,  -143,  -143,  -143,  -143,
    -143,   196,   172,  -143,  -143,  -143,   116,  -143
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,     0,     0,     0,     1,     0,     4,     0,     0,     0,
       3,     0,     0,     0,     0,     0,     0,     0,    32,    34,
      37,    40,    90,     0,     0,     0,     0,     0,     0,     0,
      74,     0,    68,    67,     0,     0,     0,     0,    26,     0,
       0,     0,     0,     0,     0,     0,     2,     0,     0,     0,
      90,     0,    73,     9,     7,     5,     6,     0,     0,     8,
       0,    96,    97,    87,     0,    82,    95,    89,     0,    64,
       0,     0,    76,    42,     0,    93,     0,     0,     0,    44,
      33,     0,     0,     0,    46,    36,     0,    48,    39,     0,
      85,    30,    65,     0,     0,    98,     0,    81,    10,    11,
      12,     0,    13,    16,    14,    17,    18,    15,    19,     0,
       0,    20,    21,    24,    22,    23,     0,     0,     0,     0,
       0,    79,    92,     0,    50,    53,    52,     0,    35,    43,
      25,    31,    58,     0,     0,     0,     0,     0,    38,    54,
      45,    41,    47,    80,     0,     0,     0,    94,    83,    78,
      86,    88,    71,    63,    72,    75,    91,    49,    51,    57,
       0,     0,     0,    29,     0,     0,    84,     0,     0,     0,
      66,    59,    62,     0,     0,     0,    56,    60,    70,    69,
      77,     0,     0,    27,    28,    61,     0,    55
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -143,  -143,    -5,   -56,  -143,  -143,  -143,  -143,   140,  -143,
      47,  -143,  -143,   163,  -143,   189,  -143,   185,  -143,   197,
     167,   164,   165,   -72,   -84,  -142,    66,   133,    -3,   -41,
    -143,   228,    -8,   146,   -67,   -22,   -48,   -11,   -46
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     2,    43,    60,    61,   101,   110,   116,    39,   163,
     164,    30,    17,    18,    36,    19,    41,    20,    44,    21,
      37,    42,    45,   137,   138,   139,   173,    68,    69,    73,
     170,    32,    62,    63,    89,    90,    65,    66,    67
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
       7,    34,   141,    10,    33,    64,   128,    70,    92,    31,
     123,    95,    97,    34,    34,     1,    33,    34,    12,   172,
      33,    49,   127,    22,    93,    23,   157,   127,   158,     3,
     127,    22,    53,    54,    55,    56,    96,    34,     4,   172,
      33,    15,    94,    16,    12,    91,    13,    98,    99,    57,
       5,    12,   121,   148,    24,     6,    58,     8,     9,    11,
      34,   100,    25,    33,    26,    27,    38,    15,   120,    16,
     151,   145,   146,    28,    35,    59,    16,   166,    40,   155,
      29,    47,    46,   102,   103,   104,   105,   106,   107,    71,
     183,    50,    12,   177,    13,   152,   108,    48,    34,    75,
      76,    33,   187,    72,    14,   127,   149,    34,    34,   127,
      33,    33,    77,    52,    78,    15,   154,    16,   127,   132,
     125,   126,    55,    56,    79,   127,    81,   109,    74,   160,
     127,   162,    82,   133,    83,    75,    76,    22,    53,    54,
      84,    12,    86,    87,   134,   117,   118,   122,    77,   135,
     124,   125,   126,    55,    56,    57,    34,    34,    34,    33,
      33,    33,    58,   156,   178,   179,   180,   143,   136,   -50,
     162,   102,   103,   104,   105,   106,   107,   165,   159,   161,
     169,    59,   171,   174,   108,   102,   103,   104,   105,   106,
     107,   102,   103,   104,   105,   106,   107,   119,   108,   132,
     125,   126,    55,    56,   108,   102,   103,   104,   105,   106,
     107,   167,   175,   176,   111,   112,   181,   168,   108,   182,
     186,   130,   184,   147,   134,   113,    80,    85,   114,   115,
     102,   103,   104,   105,   106,   107,   102,   103,   104,   105,
     106,   107,    88,   108,   144,   131,   129,   185,   140,   108,
       0,   153,   142,    51,     0,     0,   150
};

static const yytype_int16 yycheck[] =
{
       5,    12,    86,     8,    12,    27,    78,    29,    49,    12,
      77,    57,    60,    24,    25,    51,    24,    28,    34,   161,
      28,    24,    78,     3,    38,     5,     3,    83,     5,     3,
      86,     3,     4,     5,     6,     7,    58,    48,     0,   181,
      48,    57,    56,    59,    34,    48,    36,     6,     7,    21,
      28,    34,    74,   101,    34,     3,    28,    25,    29,    26,
      71,    20,    42,    71,    44,    45,     5,    57,    71,    59,
     116,    93,    94,    53,     3,    47,    59,   144,     3,   120,
      60,    28,    18,    11,    12,    13,    14,    15,    16,    26,
     174,     3,    34,   165,    36,   117,    24,    27,   109,    17,
      18,   109,   186,    40,    46,   161,   109,   118,   119,   165,
     118,   119,    30,     5,    11,    57,   119,    59,   174,     3,
       4,     5,     6,     7,    26,   181,    25,    55,    10,   134,
     186,   136,    26,    17,    11,    17,    18,     3,     4,     5,
      26,    34,    27,    26,    28,    58,    26,     3,    30,    33,
       3,     4,     5,     6,     7,    21,   167,   168,   169,   167,
     168,   169,    28,    31,   167,   168,   169,    29,    52,    32,
     175,    11,    12,    13,    14,    15,    16,    32,     3,    30,
      39,    47,    29,    27,    24,    11,    12,    13,    14,    15,
      16,    11,    12,    13,    14,    15,    16,    37,    24,     3,
       4,     5,     6,     7,    24,    11,    12,    13,    14,    15,
      16,    37,    26,    40,     8,     9,    25,    37,    24,    31,
      48,    81,   175,    29,    28,    19,    37,    42,    22,    23,
      11,    12,    13,    14,    15,    16,    11,    12,    13,    14,
      15,    16,    45,    24,    25,    82,    79,   181,    84,    24,
      -1,   118,    87,    25,    -1,    -1,   110
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    51,    64,     3,     0,    28,     3,    65,    25,    29,
      65,    26,    34,    36,    46,    57,    59,    75,    76,    78,
      80,    82,     3,     5,    34,    42,    44,    45,    53,    60,
      74,    91,    94,    95,   100,     3,    77,    83,     5,    71,
       3,    79,    84,    65,    81,    85,    18,    28,    27,    91,
       3,    94,     5,     4,     5,     6,     7,    21,    28,    47,
      66,    67,    95,    96,    98,    99,   100,   101,    90,    91,
      98,    26,    40,    92,    10,    17,    18,    30,    11,    26,
      78,    25,    26,    11,    26,    80,    27,    26,    82,    97,
      98,    91,    92,    38,    56,   101,    98,    99,     6,     7,
      20,    68,    11,    12,    13,    14,    15,    16,    24,    55,
      69,     8,     9,    19,    22,    23,    70,    58,    26,    37,
      91,    98,     3,    97,     3,     4,     5,    66,    86,    83,
      71,    76,     3,    17,    28,    33,    52,    86,    87,    88,
      84,    87,    85,    29,    25,    98,    98,    29,    99,    91,
      96,   101,    98,    90,    91,    92,    31,     3,     5,     3,
      65,    30,    65,    72,    73,    32,    97,    37,    37,    39,
      93,    29,    88,    89,    27,    26,    40,    86,    91,    91,
      91,    25,    31,    87,    73,    89,    48,    87
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    63,    64,    65,    65,    66,    66,    67,    67,    67,
      68,    68,    68,    69,    69,    69,    69,    69,    69,    69,
      70,    70,    70,    70,    70,    71,    71,    72,    73,    73,
      74,    75,    75,    76,    76,    77,    78,    78,    79,    80,
      80,    81,    82,    83,    83,    84,    84,    85,    85,    86,
      86,    86,    86,    86,    87,    87,    87,    87,    88,    88,
      88,    89,    89,    90,    90,    91,    91,    91,    91,    91,
      91,    91,    91,    91,    91,    92,    92,    93,    93,    94,
      95,    96,    96,    96,    97,    97,    98,    98,    99,    99,
     100,   100,   100,   100,   101,   101,   101,   101,   101
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     8,     3,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     3,     3,     1,
       3,     4,     1,     3,     1,     3,     3,     1,     3,     3,
       1,     3,     3,     3,     2,     3,     2,     3,     2,     2,
       1,     2,     1,     1,     1,     6,     3,     2,     1,     3,
       3,     3,     1,     3,     1,     3,     5,     1,     1,     6,
       6,     4,     4,     2,     1,     3,     1,     2,     0,     3,
       4,     2,     1,     3,     3,     1,     3,     1,     3,     1,
       1,     4,     3,     2,     3,     1,     1,     1,     2
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[+yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#  else
/* Return the length of YYSTR.  */
static YYPTRDIFF_T
yystrlen (const char *yystr)
{
  YYPTRDIFF_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYPTRDIFF_T *yymsg_alloc, char **yymsg,
                yy_state_t *yyssp, int yytoken)
{
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Actual size of YYARG. */
  int yycount = 0;
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[+*yyssp];
      YYPTRDIFF_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
      yysize = yysize0;
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYPTRDIFF_T yysize1
                    = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    /* Don't count the "%s"s in the final size, but reserve room for
       the terminator.  */
    YYPTRDIFF_T yysize1 = yysize + (yystrlen (yyformat) - 2 * yycount) + 1;
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          ++yyp;
          ++yyformat;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss;
    yy_state_t *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYPTRDIFF_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYPTRDIFF_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2:
#line 110 "parse.y"
                                                                       { parseresult = makeprogram(yyvsp[-6], yyvsp[-4], yyvsp[-1]); }
#line 1644 "y.tab.c"
    break;

  case 3:
#line 112 "parse.y"
                                 { yyval = cons(yyvsp[-2], yyvsp[0]); }
#line 1650 "y.tab.c"
    break;

  case 4:
#line 113 "parse.y"
             { yyval = cons(yyvsp[0], NULL); }
#line 1656 "y.tab.c"
    break;

  case 25:
#line 140 "parse.y"
                               { instlabel(yyvsp[-2]); }
#line 1662 "y.tab.c"
    break;

  case 26:
#line 141 "parse.y"
         { instlabel(yyvsp[0]); }
#line 1668 "y.tab.c"
    break;

  case 27:
#line 143 "parse.y"
                           { yyval = instfields(yyvsp[-2], yyvsp[0]); }
#line 1674 "y.tab.c"
    break;

  case 28:
#line 145 "parse.y"
                                         { yyval = nconc(yyvsp[-2], yyvsp[0]); }
#line 1680 "y.tab.c"
    break;

  case 30:
#line 148 "parse.y"
                               { yyval = dolabel(yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1686 "y.tab.c"
    break;

  case 31:
#line 150 "parse.y"
                                        { yyval = yyvsp[0]; }
#line 1692 "y.tab.c"
    break;

  case 33:
#line 153 "parse.y"
                                { yyval = yyvsp[0]; }
#line 1698 "y.tab.c"
    break;

  case 35:
#line 156 "parse.y"
                              { instconst(yyvsp[-2], yyvsp[0]); }
#line 1704 "y.tab.c"
    break;

  case 36:
#line 158 "parse.y"
                               { yyval = yyvsp[0]; }
#line 1710 "y.tab.c"
    break;

  case 38:
#line 161 "parse.y"
                          { insttype(yyvsp[-2], yyvsp[0]); }
#line 1716 "y.tab.c"
    break;

  case 39:
#line 163 "parse.y"
                               { yyval = yyvsp[0]; }
#line 1722 "y.tab.c"
    break;

  case 41:
#line 166 "parse.y"
                           { instvars(yyvsp[-2], yyvsp[0]); }
#line 1728 "y.tab.c"
    break;

  case 42:
#line 168 "parse.y"
                                     { yyval = makeprogn(yyvsp[-2],cons(yyvsp[-1], yyvsp[0])); }
#line 1734 "y.tab.c"
    break;

  case 49:
#line 179 "parse.y"
                           { yyval = unaryop(yyvsp[-1], yyvsp[0]); }
#line 1740 "y.tab.c"
    break;

  case 51:
#line 181 "parse.y"
              { yyval = unaryop(yyvsp[-1], yyvsp[0]); }
#line 1746 "y.tab.c"
    break;

  case 55:
#line 186 "parse.y"
                                              { yyval = instarray(yyvsp[-3], yyvsp[0]); }
#line 1752 "y.tab.c"
    break;

  case 56:
#line 187 "parse.y"
                        { yyval = instrec(yyvsp[-2], yyvsp[-1]); }
#line 1758 "y.tab.c"
    break;

  case 57:
#line 188 "parse.y"
                   { yyval = instpoint(yyvsp[-1], yyvsp[0]); }
#line 1764 "y.tab.c"
    break;

  case 58:
#line 190 "parse.y"
                        { yyval = findtype(yyvsp[0]); }
#line 1770 "y.tab.c"
    break;

  case 59:
#line 191 "parse.y"
                       { yyval = instenum(yyvsp[-1]); }
#line 1776 "y.tab.c"
    break;

  case 60:
#line 192 "parse.y"
                           { yyval = instdotdot(yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1782 "y.tab.c"
    break;

  case 61:
#line 194 "parse.y"
                                          { yyval = cons(yyvsp[-2], yyvsp[0]); }
#line 1788 "y.tab.c"
    break;

  case 62:
#line 195 "parse.y"
             { yyval = cons(yyvsp[0], NULL); }
#line 1794 "y.tab.c"
    break;

  case 63:
#line 197 "parse.y"
                                            { yyval = cons(yyvsp[-2], yyvsp[0]); }
#line 1800 "y.tab.c"
    break;

  case 65:
#line 200 "parse.y"
                                         { yyval = makeprogn(yyvsp[-2],cons(yyvsp[-1], yyvsp[0])); }
#line 1806 "y.tab.c"
    break;

  case 66:
#line 201 "parse.y"
                               { yyval = makeif(yyvsp[-4], yyvsp[-3], yyvsp[-1], yyvsp[0]); }
#line 1812 "y.tab.c"
    break;

  case 69:
#line 204 "parse.y"
                                      { yyval = makefor(1, yyvsp[-5], yyvsp[-4], yyvsp[-3], yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1818 "y.tab.c"
    break;

  case 70:
#line 205 "parse.y"
                                          { yyval = makefor(-1, yyvsp[-5], yyvsp[-4], yyvsp[-3], yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1824 "y.tab.c"
    break;

  case 71:
#line 206 "parse.y"
                               { yyval = makerepeat(yyvsp[-3], yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1830 "y.tab.c"
    break;

  case 72:
#line 207 "parse.y"
                                                { yyval = makewhile(yyvsp[-3], yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1836 "y.tab.c"
    break;

  case 73:
#line 208 "parse.y"
              { yyval = dogoto(yyvsp[-1], yyvsp[0]); }
#line 1842 "y.tab.c"
    break;

  case 75:
#line 211 "parse.y"
                                      { yyval = cons(yyvsp[-1], yyvsp[0]); }
#line 1848 "y.tab.c"
    break;

  case 76:
#line 212 "parse.y"
      { yyval = NULL; }
#line 1854 "y.tab.c"
    break;

  case 77:
#line 214 "parse.y"
                       { yyval = yyvsp[0]; }
#line 1860 "y.tab.c"
    break;

  case 78:
#line 215 "parse.y"
              { yyval = NULL; }
#line 1866 "y.tab.c"
    break;

  case 79:
#line 217 "parse.y"
                                  { yyval = binop(yyvsp[-1], yyvsp[-2], yyvsp[0]); }
#line 1872 "y.tab.c"
    break;

  case 80:
#line 219 "parse.y"
                                             { yyval = makefuncall(yyvsp[-2], yyvsp[-3], yyvsp[-1]); }
#line 1878 "y.tab.c"
    break;

  case 81:
#line 221 "parse.y"
                     { yyval = unaryop(yyvsp[-1], yyvsp[0]); }
#line 1884 "y.tab.c"
    break;

  case 83:
#line 223 "parse.y"
                        { yyval = binop(yyvsp[-1], yyvsp[-2], yyvsp[0]); }
#line 1890 "y.tab.c"
    break;

  case 84:
#line 225 "parse.y"
                                 { yyval = cons(yyvsp[-2], yyvsp[0]); }
#line 1896 "y.tab.c"
    break;

  case 86:
#line 228 "parse.y"
                                { yyval = binop(yyvsp[-1], yyvsp[-2], yyvsp[0]); }
#line 1902 "y.tab.c"
    break;

  case 88:
#line 231 "parse.y"
                            { yyval = binop(yyvsp[-1], yyvsp[-2], yyvsp[0]); }
#line 1908 "y.tab.c"
    break;

  case 90:
#line 234 "parse.y"
                      { yyval = findid(yyvsp[0]); }
#line 1914 "y.tab.c"
    break;

  case 91:
#line 235 "parse.y"
                                       { yyval = arrayref(yyvsp[-3], yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1920 "y.tab.c"
    break;

  case 92:
#line 236 "parse.y"
                          { yyval = reducedot(yyvsp[-2], yyvsp[-1], yyvsp[0]); }
#line 1926 "y.tab.c"
    break;

  case 93:
#line 237 "parse.y"
                 { yyval = dopoint(yyvsp[-1], yyvsp[0]); }
#line 1932 "y.tab.c"
    break;

  case 94:
#line 239 "parse.y"
                            { yyval = yyvsp[-1]; }
#line 1938 "y.tab.c"
    break;

  case 98:
#line 243 "parse.y"
             { yyval = unaryop(yyvsp[-1], yyvsp[0]); }
#line 1944 "y.tab.c"
    break;


#line 1948 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = YY_CAST (char *, YYSTACK_ALLOC (YY_CAST (YYSIZE_T, yymsg_alloc)));
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[+*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 245 "parse.y"



/* You should add your own debugging flags below, and add debugging
printouts to your programs.


You will want to change DEBUG to turn off printouts once things
are working.
*/


#define DEBUG   31 /* set bits here for debugging, 0 = off */
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
  if (var->whichval == AREFOP && off->basicdt == INTEGER) {
    TOKEN offset = var->operands->link;
    if (offset->whichval == PLUSOP) {
    // needs sum
    int off1 = offset->operands->intval;
    int off2 = off->intval;
    TOKEN sum = makeintc(off1 + off2);
    sum->link = offset->operands->link;
    offset->operands = sum;
    }
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

  /* if (DEBUG && DB_MAKEWHILE) {
  printf("makewhile\n");
  dbugprinttok(tok);
  } */
  return tok;
}


/* makesubrange makes a SUBRANGE symbol table entry, puts the pointer to it
into tok, and returns tok. */
TOKEN makesubrange(TOKEN tok, int low, int high) {
// ??
  SYMBOL subrange = makesym("");
  subrange->kind = SUBRANGE;
  subrange->basicdt = INTEGER;
  subrange->size = basicsizes[INTEGER];
  subrange->highbound = high;
  subrange->lowbound = low;
  tok->symtype = subrange;
  printf("subrange\n");
  fflush(stdout);
  return tok;
}

/* makeop makes a new operator token with operator number opnum.
Example: makeop(FLOATOP) */
TOKEN makeop(int opnum){
  TOKEN tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = opnum;
  printf("makeop\n");
  fflush(stdout);
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
  printf("makefloat\n");
  fflush(stdout);
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
  printf("makefix\n");
  fflush(stdout);
}


/* unaryop links a unary operator op to one operand, lhs */
TOKEN unaryop(TOKEN op, TOKEN lhs) {
  op->operands = lhs;
  lhs->link = NULL;
  printf("unaryop\n");
  fflush(stdout);
  return op;
}


/* binop links a binary operator op to two operands, lhs and rhs. */
TOKEN binop(TOKEN op, TOKEN lhs, TOKEN rhs) /* reduce binary operator */
{ 
  op->operands = lhs; /* link operands to operator */
  lhs->link = rhs; /* link second operand to first */
  rhs->link = NULL; /* terminate operand list */
  if (lhs->basicdt == REAL && rhs->basicdt == REAL) {
    op->basicdt = REAL;
  } else if (lhs->basicdt == REAL && rhs->basicdt == INTEGER) {
    op->basicdt = REAL;
    TOKEN floattok = makefloat (rhs);
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
  // !!!!!
  assert( var->symtype->kind == RECORDSYM );
  SYMBOL current = var->symtype->datatype;
  while (current != NULL) {
    if (strcmp(current->namestring, field->stringval) == 0) {
      TOKEN numtok = makeintc(current->offset);
      TOKEN res = makearef (var, numtok, dot);
      res->basicdt = current->datatype->basicdt;
      return res;
    } else {
      current = current->link;
    }
  
  }

//dot = makearef(var, makeintc(offset), dot);

if (DEBUG & DB_REDUCEDOT) {
  printf("reducedot\n");
  dbugprinttok(var);
  dbugprinttok(dot);
  dbugprinttok(field);
  fflush(stdout);
}
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
    int size = (arr->symtype->size / (high + low - 1));

    TOKEN sub = copytok (subs);
    TOKEN int_size = makeintc(size);
    TOKEN neg_size = makeintc(-1 * size);
    TOKEN plus = makeop(PLUSOP);

    sub->link = NULL;
    int_size->link = sub;
    multi->operands = int_size;

    neg_size->link = multi;
    plus->operands = neg_size;

    TOKEN sub_arrayref = makearef(arr, plus, tokb);
    sub_arrayref->symtype = arr->symtype->datatype;

    return arrayref(sub_arrayref, tok, subs->link, tokb);

  } else {
    TOKEN multi = makeop(TIMESOP);
    int high = arr->symtype->highbound;
    int low = arr->symtype->lowbound;
    int size = (arr->symtype->size / (high + low - 1));

    TOKEN int_size = makeintc(size);
    int_size->link = subs;
    multi->operands = int_size;

    TOKEN neg_size = makeintc(-1 * size);
    neg_size->link = multi;
    TOKEN plus = makeop(PLUSOP);
    plus->operands = neg_size;

  if (DEBUG & DB_ARRAYREF) {
    printf("arrayref\n");
    //printf("low : %d, high : %d, total size : %d, size of ele %d", low, high, arr->symtype->size, size);
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
  // new writeln write
  if (strcmp(fn->stringval, "new") == 0) {
    tok = makeop(ASSIGNOP);
    tok->operands = args;


    SYMBOL typsym = args->symtype;
    typsym = typsym->datatype;


    TOKEN funcal = talloc();
    funcal->tokentype = OPERATOR;
    funcal->whichval = FUNCALLOP;
    funcal->operands = fn;
    fn->link = makeintc(typsym->datatype->size);
    args->link = funcal;

  } else {
    tok->tokentype = OPERATOR;
    tok->whichval = FUNCALLOP;
    tok->operands = fn;
    fn->link=args;
  }
    /* if (DEBUG && DB_MAKEFUNCALL) {
    printf("makefuncall\n");
    dbugprinttok(tok);
  } */
  return tok;


  /* TOKEN t1 = makeop(FUNCALLOP);
  SYMBOL find = searchst(fn->stringval);
  t1->basicdt = find->datatype->basicdt;
  t1->operands = fn;
  fn->link = args;
  return t1; */
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
  printf("makeprogram\n");
  fflush(stdout);
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

  labeltok->operands = tokb;
  labeltok->link = statement;
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
  // change to while?
  for (int i = 0; i < labelnumber; i++) {
    if (label_table[i] == labeltok->intval) {
      user_label = i;
    }
  }
  tok = makegoto(user_label);
  printf("dogoto\n");
  fflush(stdout);
  return tok;
}


/* dopoint handles a ^ operator. john^ becomes (^ john) with type record
tok is a (now) unused token that is recycled. */
TOKEN dopoint(TOKEN var, TOKEN tok) {
  // !!!!
  assert( var->symtype->kind == POINTERSYM );
  assert( var->symtype->datatype->kind == TYPESYM );
  tok->tokentype = OPERATOR;
  tok->operands = var;
  tok->whichval = POINTEROP;
  var->link = NULL;
  tok->symtype = var->symtype->datatype->datatype;
  printf("dopoint\n");
  fflush(stdout);
  return tok;
}


/* instlabel installs a user label into the label table */
void instlabel (TOKEN num) {

  label_table[labelnumber] = num->intval;
  labelnumber++;
  printf("instlabel\n");
  fflush(stdout);
}


/* instenum installs an enumerated subrange in the symbol table,
e.g., type color = (red, white, blue)
by calling makesubrange and returning the token it returns. */
TOKEN instenum(TOKEN idlist) {
  int high = 0;

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
printf("install enum\n");
fflush(stdout);
return tok;
}


/* instdotdot installs a .. subrange in the symbol table.
dottok is a (now) unused token that is recycled. */
TOKEN instdotdot(TOKEN lowtok, TOKEN dottok, TOKEN hightok) {
  int high = hightok->intval;
  int low = lowtok->intval;
  TOKEN tok = makesubrange(dottok, low, high);
  printf("instdotdot\n");
  fflush(stdout);
  return tok;
}


TOKEN instarray(TOKEN bounds, TOKEN typetok) {
// ??
  SYMBOL array = makesym("");
  array->kind = ARRAYSYM;
  array->datatype = typetok->symtype;
  array->highbound = bounds->symtype->highbound;
  array->lowbound = bounds->symtype->lowbound;
  int size = array->datatype->size * (array->highbound - array->lowbound + 1);
  array->size = size;


  TOKEN second_array;
  if(bounds->link){
    int high = bounds->link->symtype->highbound;
    int low = bounds->link->symtype->lowbound;
    TOKEN subrange = makesubrange(copytok(typetok), low, high);
    second_array = instarray(subrange, typetok);
    array->datatype = second_array->symtype;
    array->size = array->datatype->size * (array->highbound - array->lowbound + 1);
  }
  typetok->symtype = array;
  printf("instarray\n");
  fflush(stdout);
  return typetok;
}


/* instfields will install type in a list idlist of field name tokens:
re, im: real put the pointer to REAL in the RE, IM tokens.
typetok is a token whose symtype is a symbol table pointer.
Note that nconc() can be used to combine these lists after instrec() */
TOKEN instfields(TOKEN idlist, TOKEN typetok) {
  printf("instfields\n");
  fflush(stdout);

  // !!!!!
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
  printf("instpoint\n");
  fflush(stdout);
  /* SYMBOL ptrsym, sym;

  ptrsym = makesym("");
  ptrsym->kind = POINTERSYM;
  ptrsym->basicdt = POINTER;
  ptrsym->size = basicsizes[POINTER];
  tok->symtype = ptrsym; */
  printf("instpoint = %d\n", tok->symtype == NULL);
  /* sym = searchins(typename->stringval);
  sym->kind = TYPESYM;

*/

  SYMBOL typesym = searchins(typename->stringval);


  SYMBOL pointsym = makesym("");
  pointsym->datatype = typesym;
  pointsym->kind = POINTERSYM;
  pointsym->size = basicsizes[POINTER];
  pointsym->basicdt = POINTER;

  tok->symtype = pointsym;
  tok->basicdt = POINTER;

  return tok;
}


/* instrec will install a record definition. Each token in the linked list
argstok has a pointer its type. rectok is just a trash token to be
used to return the result in its symtype */
TOKEN instrec(TOKEN rectok, TOKEN argstok) {
// ??
  SYMBOL record_sym = makesym("");
  record_sym->kind = RECORDSYM;
  int num = 0;
  int next = 0;
  int align;

  SYMBOL prev = NULL;
  
  while (argstok != NULL) {
    align = alignsize(argstok->symtype);
    SYMBOL field = makesym(argstok->stringval);
    field->datatype = argstok->symtype;
    field->offset = wordaddress(next, align);
    field->size = argstok->symtype->size;
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

  printf("instrec\n");
  fflush(stdout);
  if (DEBUG & DB_INSTREC) {
    printf("install rec\n");
    printf("total size %d\n", record_sym->size);
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
  printf("insttype\n");
  fflush(stdout);
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
  //dbugprinttok(sym);
  }
}


/* install variables in symbol table */
void instvars(TOKEN idlist, TOKEN typetok)
{ 
  SYMBOL sym, typesym; int align;
  printf("%d\n", typetok->symtype == NULL);
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
  printf("instvars\n");
  fflush(stdout);
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
  printf("findid\n");
  fflush(stdout);
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
      printf("findtype: bad type\n");
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
  printf("makeintc\n");
  fflush(stdout);
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
  printf("makelabel\n");
  fflush(stdout);
  return tok;
}


/* makegoto makes a GOTO operator to go to the specified label.
The label number is put into a number token. */
TOKEN makegoto(int num){
  TOKEN tok = talloc();
  tok->tokentype = OPERATOR;
  tok->whichval = GOTOOP;
  tok->operands = makeintc(num);
  printf("makegoto\n");
  fflush(stdout);
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
{
fprintf (stderr, "%s\n", s);
}


int main(void) /* */
{ int res;
initsyms();
res = yyparse();
printst(); /* to shorten, change to: printstlevel(1); */
printf("yyparse result = %8d\n", res);
if (DEBUG & DB_PARSERES) dbugprinttok(parseresult);
ppexpr(parseresult); /* Pretty-print the result tree */
/* uncomment following to call code generator. */
/*
gencode(parseresult, blockoffs[blocknumber], labelnumber);
*/
}
