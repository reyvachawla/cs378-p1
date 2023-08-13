Symbol table level 0
 94756917740192        real  BASIC  basicdt   1          siz     8
 94756917740288     integer  BASIC  basicdt   0          siz     4
 94756917740384        char  BASIC  basicdt   2          siz     1
 94756917740480     boolean  BASIC  basicdt   3          siz     4
 94756917740576         exp  knd 5 0  typ 94756917740672  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917740864       trexp  knd 5 0  typ 94756917740960  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917741152         sin  knd 5 0  typ 94756917741248  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917741440         cos  knd 5 0  typ 94756917741536  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917741728       trsin  knd 5 0  typ 94756917741824  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917742016        sqrt  knd 5 0  typ 94756917742112  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917742304       round  knd 5 0  typ 94756917742400  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94756917742592      iround  knd 5 0  typ 94756917742688  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94756917742880         ord  knd 5 0  typ 94756917742976  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94756917743168         new  knd 5 0  typ 94756917743264  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94756917743456       trnew  knd 5 0  typ 94756917743552  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94756917743744       write  knd 5 0  typ 94756917743840  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94756917744032     writeln  knd 5 0  typ 94756917744128  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94756917744320      writef  knd 5 0  typ 94756917744416  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94756917744608    writelnf  knd 5 0  typ 94756917744704  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94756917744896      writei  knd 5 0  typ 94756917744992  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94756917745184    writelni  knd 5 0  typ 94756917745280  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94756917745472        read  knd 5 0  typ 94756917745568  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94756917745760      readln  knd 5 0  typ 94756917745856  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94756917746048         eof  knd 5 0  typ 94756917746144  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94756917771760           i  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= i (- i 1))))
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
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	subl	%ecx,%eax         	#  %eax - %ecx -> %eax
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
