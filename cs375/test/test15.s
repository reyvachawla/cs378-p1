Symbol table level 0
 94789824987808        real  BASIC  basicdt   1          siz     8
 94789824987904     integer  BASIC  basicdt   0          siz     4
 94789824988000        char  BASIC  basicdt   2          siz     1
 94789824988096     boolean  BASIC  basicdt   3          siz     4
 94789824988192         exp  knd 5 0  typ 94789824988288  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824988480       trexp  knd 5 0  typ 94789824988576  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824988768         sin  knd 5 0  typ 94789824988864  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824989056         cos  knd 5 0  typ 94789824989152  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824989344       trsin  knd 5 0  typ 94789824989440  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824989632        sqrt  knd 5 0  typ 94789824989728  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824989920       round  knd 5 0  typ 94789824990016  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94789824990208      iround  knd 5 0  typ 94789824990304  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94789824990496         ord  knd 5 0  typ 94789824990592  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94789824990784         new  knd 5 0  typ 94789824990880  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94789824991072       trnew  knd 5 0  typ 94789824991168  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94789824991360       write  knd 5 0  typ 94789824991456  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94789824991648     writeln  knd 5 0  typ 94789824991744  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94789824991936      writef  knd 5 0  typ 94789824992032  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94789824992224    writelnf  knd 5 0  typ 94789824992320  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94789824992512      writei  knd 5 0  typ 94789824992608  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94789824992800    writelni  knd 5 0  typ 94789824992896  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94789824993088        read  knd 5 0  typ 94789824993184  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94789824993376      readln  knd 5 0  typ 94789824993472  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94789824993664         eof  knd 5 0  typ 94789824993760  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94789825019504           i  VAR    0 typ integer  lvl  1  siz     4  off     0
 94789825019600           n  VAR    0 typ integer  lvl  1  siz     4  off     4
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
