Symbol table level 0
 93934917419680        real  BASIC  basicdt   1          siz     8
 93934917419776     integer  BASIC  basicdt   0          siz     4
 93934917419872        char  BASIC  basicdt   2          siz     1
 93934917419968     boolean  BASIC  basicdt   3          siz     4
 93934917420064         exp  knd 5 0  typ 93934917420160  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917420352       trexp  knd 5 0  typ 93934917420448  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917420640         sin  knd 5 0  typ 93934917420736  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917420928         cos  knd 5 0  typ 93934917421024  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917421216       trsin  knd 5 0  typ 93934917421312  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917421504        sqrt  knd 5 0  typ 93934917421600  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917421792       round  knd 5 0  typ 93934917421888  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93934917422080      iround  knd 5 0  typ 93934917422176  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93934917422368         ord  knd 5 0  typ 93934917422464  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93934917422656         new  knd 5 0  typ 93934917422752  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93934917422944       trnew  knd 5 0  typ 93934917423040  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93934917423232       write  knd 5 0  typ 93934917423328  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93934917423520     writeln  knd 5 0  typ 93934917423616  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93934917423808      writef  knd 5 0  typ 93934917423904  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93934917424096    writelnf  knd 5 0  typ 93934917424192  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93934917424384      writei  knd 5 0  typ 93934917424480  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93934917424672    writelni  knd 5 0  typ 93934917424768  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93934917424960        read  knd 5 0  typ 93934917425056  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93934917425248      readln  knd 5 0  typ 93934917425344  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93934917425536         eof  knd 5 0  typ 93934917425632  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93934917451344         ptr  VAR    4 typ 93934917451248  lvl  1  siz     8  off     0
(^ integer)
 93934917451760           i  VAR    0 typ integer  lvl  1  siz     4  off     8
yyparse result =        0
(program graph1 (progn output)
                (progn (progn (label 0)
                              (if (<> ptr 0)
                                  (progn (progn (:= i (+ i 1)))
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
.L0:
	movq	-32(%rbp),%rax     	#  ptr -> %rax
	movl	$0,%ecx         	#  0 -> %ecx
	cmpl	%ecx,%eax           	#  compare %eax - %ecx
	jne	.L2 			#  jump if     !=
	jmp	.L3 			#  jump 
.L2:
	movl	-24(%rbp),%eax     	#  i -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	addl	%ecx,%eax         	#  %eax + %ecx -> %eax
	movl	%eax,-24(%rbp)     	#  %eax -> i
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
