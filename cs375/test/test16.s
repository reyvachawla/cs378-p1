Symbol table level 0
 94211585893024        real  BASIC  basicdt   1          siz     8
 94211585893120     integer  BASIC  basicdt   0          siz     4
 94211585893216        char  BASIC  basicdt   2          siz     1
 94211585893312     boolean  BASIC  basicdt   3          siz     4
 94211585893408         exp  knd 5 0  typ 94211585893504  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585893696       trexp  knd 5 0  typ 94211585893792  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585893984         sin  knd 5 0  typ 94211585894080  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585894272         cos  knd 5 0  typ 94211585894368  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585894560       trsin  knd 5 0  typ 94211585894656  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585894848        sqrt  knd 5 0  typ 94211585894944  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585895136       round  knd 5 0  typ 94211585895232  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94211585895424      iround  knd 5 0  typ 94211585895520  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94211585895712         ord  knd 5 0  typ 94211585895808  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94211585896000         new  knd 5 0  typ 94211585896096  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94211585896288       trnew  knd 5 0  typ 94211585896384  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94211585896576       write  knd 5 0  typ 94211585896672  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94211585896864     writeln  knd 5 0  typ 94211585896960  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94211585897152      writef  knd 5 0  typ 94211585897248  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94211585897440    writelnf  knd 5 0  typ 94211585897536  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94211585897728      writei  knd 5 0  typ 94211585897824  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94211585898016    writelni  knd 5 0  typ 94211585898112  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94211585898304        read  knd 5 0  typ 94211585898400  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94211585898592      readln  knd 5 0  typ 94211585898688  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94211585898880         eof  knd 5 0  typ 94211585898976  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94211585924592           n  VAR    0 typ integer  lvl  1  siz     4  off     0
yyparse result =        0
(program graph1 (progn output)
                (progn (:= n 1)
                       (progn (label 0)
                              (progn (:= n (- n 1)))
                              (if (= n 0)
                                  (progn)
                                  (goto 0)))))
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
	movl	%eax,-32(%rbp)     	#  %eax -> n
.L0:
	movl	-32(%rbp),%eax     	#  n -> %eax
	movl	$1,%ecx         	#  1 -> %ecx
	subl	%ecx,%eax         	#  %eax - %ecx -> %eax
	movl	%eax,-32(%rbp)     	#  %eax -> n
	movl	-32(%rbp),%eax     	#  n -> %eax
	movl	$0,%ecx         	#  0 -> %ecx
	cmpl	%ecx,%eax           	#  compare %eax - %ecx
	je	.L2 			#  jump if     ==
	jmp	.L0 			#  jump 
	jmp	.L3 			#  jump 
.L2:
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
