Symbol table level 0
 94143956378272        real  BASIC  basicdt   1          siz     8
 94143956378368     integer  BASIC  basicdt   0          siz     4
 94143956378464        char  BASIC  basicdt   2          siz     1
 94143956378560     boolean  BASIC  basicdt   3          siz     4
 94143956378656         exp  knd 5 0  typ 94143956378752  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956378944       trexp  knd 5 0  typ 94143956379040  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956379232         sin  knd 5 0  typ 94143956379328  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956379520         cos  knd 5 0  typ 94143956379616  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956379808       trsin  knd 5 0  typ 94143956379904  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956380096        sqrt  knd 5 0  typ 94143956380192  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956380384       round  knd 5 0  typ 94143956380480  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94143956380672      iround  knd 5 0  typ 94143956380768  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94143956380960         ord  knd 5 0  typ 94143956381056  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94143956381248         new  knd 5 0  typ 94143956381344  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94143956381536       trnew  knd 5 0  typ 94143956381632  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94143956381824       write  knd 5 0  typ 94143956381920  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94143956382112     writeln  knd 5 0  typ 94143956382208  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94143956382400      writef  knd 5 0  typ 94143956382496  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94143956382688    writelnf  knd 5 0  typ 94143956382784  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94143956382976      writei  knd 5 0  typ 94143956383072  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94143956383264    writelni  knd 5 0  typ 94143956383360  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94143956383552        read  knd 5 0  typ 94143956383648  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94143956383840      readln  knd 5 0  typ 94143956383936  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94143956384128         eof  knd 5 0  typ 94143956384224  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94143956409840           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i 1)))
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
	movl	$1,%eax         	#  1 -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
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
