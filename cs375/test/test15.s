Symbol table level 0
 93906457408160        real  BASIC  basicdt   1          siz     8
 93906457408256     integer  BASIC  basicdt   0          siz     4
 93906457408352        char  BASIC  basicdt   2          siz     1
 93906457408448     boolean  BASIC  basicdt   3          siz     4
 93906457408544         exp  knd 5 0  typ 93906457408640  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457408832       trexp  knd 5 0  typ 93906457408928  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457409120         sin  knd 5 0  typ 93906457409216  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457409408         cos  knd 5 0  typ 93906457409504  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457409696       trsin  knd 5 0  typ 93906457409792  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457409984        sqrt  knd 5 0  typ 93906457410080  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457410272       round  knd 5 0  typ 93906457410368  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93906457410560      iround  knd 5 0  typ 93906457410656  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93906457410848         ord  knd 5 0  typ 93906457410944  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93906457411136         new  knd 5 0  typ 93906457411232  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93906457411424       trnew  knd 5 0  typ 93906457411520  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93906457411712       write  knd 5 0  typ 93906457411808  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93906457412000     writeln  knd 5 0  typ 93906457412096  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93906457412288      writef  knd 5 0  typ 93906457412384  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93906457412576    writelnf  knd 5 0  typ 93906457412672  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93906457412864      writei  knd 5 0  typ 93906457412960  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93906457413152    writelni  knd 5 0  typ 93906457413248  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93906457413440        read  knd 5 0  typ 93906457413536  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93906457413728      readln  knd 5 0  typ 93906457413824  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93906457414016         eof  knd 5 0  typ 93906457414112  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93906457439856           i  VAR    0 typ integer  lvl  1  siz     4  off     0
 93906457439952           n  VAR    0 typ integer  lvl  1  siz     4  off     4
yyparse result =        0
(program graph1 (progn output)
                (progn (progn (:= i 0)
                              (label 0)
                              (if (<= i 32)
                                  (progn (:= n 1)
                                         (:= i (+ i 1))
                                         (goto 0))))))
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
	movl	$0,%eax         	#  0 -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
.L0:
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$32,%ecx         	#  32 -> %ecx
	cmpl	%ecx,%eax           	#  compare %eax - %ecx
	jle	.L2 			#  jump if     <=
	jmp	.L3 			#  jump 
.L2:
	movl	$1,%eax         	#  1 -> %eax
	movl	%eax,-28(%rbp)     	#  %eax -> n
	movl	-32(%rbp),%eax     	#  i -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	addl	%ecx,%eax         	#  %eax + %ecx -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> i
	jmp	.L0 			#  jump 
.L3:
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
