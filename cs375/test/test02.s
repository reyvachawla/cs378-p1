Symbol table level 0
 94214711415456        real  BASIC  basicdt   1          siz     8
 94214711415552     integer  BASIC  basicdt   0          siz     4
 94214711415648        char  BASIC  basicdt   2          siz     1
 94214711415744     boolean  BASIC  basicdt   3          siz     4
 94214711415840         exp  knd 5 0  typ 94214711415936  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711416128       trexp  knd 5 0  typ 94214711416224  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711416416         sin  knd 5 0  typ 94214711416512  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711416704         cos  knd 5 0  typ 94214711416800  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711416992       trsin  knd 5 0  typ 94214711417088  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711417280        sqrt  knd 5 0  typ 94214711417376  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711417568       round  knd 5 0  typ 94214711417664  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94214711417856      iround  knd 5 0  typ 94214711417952  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94214711418144         ord  knd 5 0  typ 94214711418240  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94214711418432         new  knd 5 0  typ 94214711418528  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94214711418720       trnew  knd 5 0  typ 94214711418816  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94214711419008       write  knd 5 0  typ 94214711419104  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94214711419296     writeln  knd 5 0  typ 94214711419392  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94214711419584      writef  knd 5 0  typ 94214711419680  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94214711419872    writelnf  knd 5 0  typ 94214711419968  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94214711420160      writei  knd 5 0  typ 94214711420256  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94214711420448    writelni  knd 5 0  typ 94214711420544  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94214711420736        read  knd 5 0  typ 94214711420832  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94214711421024      readln  knd 5 0  typ 94214711421120  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94214711421312         eof  knd 5 0  typ 94214711421408  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94214711447248         ptr  VAR    4 typ 94214711447152  lvl  1  siz     8  off     0
(^ real)
 94214711447344        john  VAR    4 typ 94214711447152  lvl  1  siz     8  off     8
(^ real)
yyparse result =        0
(program graph1 (progn output)
                (progn (:= ptr john)))
# ---------------- Beginning of Generated Code --------------------
        .file   "foo"
        .text
        .globl graph1
        .type   graph1, @function
graph1:
.LFB0:
	.cfi_startproc
	pushq	%rbp              # save base pointer on stack
	.cfi_def_cfa_offset 16
	movq	%rsp, %rbp        # move stack pointer to base pointer
	.cfi_offset 6, -16
	.cfi_def_cfa_register 6
        subq	$32, %rsp 	  # make space for this stack frame
	movq	%rbx, %r9        # save %rbx (callee-saved) in %r9
# ------------------------- begin Your code -----------------------------
	movq	-24(%rbp),%rax     	#  john -> %rax
	movl	%eax,-32(%rbp)     	#  %eax -> ptr
# ----------------------- begin Epilogue code ---------------------------
	movq	%r9, %rbx        # restore %rbx (callee-saved) from %r9
        leave
        ret
        .cfi_endproc
.LFE0:
        .size   graph1, .-graph1
# ----------------- end Epilogue; Literal data follows ------------------
        .section        .rodata

        .ident  "CS 375 Compiler - Spring 2022"
