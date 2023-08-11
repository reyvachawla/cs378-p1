Symbol table level 0
 94324792148640        real  BASIC  basicdt   1          siz     8
 94324792148736     integer  BASIC  basicdt   0          siz     4
 94324792148832        char  BASIC  basicdt   2          siz     1
 94324792148928     boolean  BASIC  basicdt   3          siz     4
 94324792149024         exp  knd 5 0  typ 94324792149120  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792149312       trexp  knd 5 0  typ 94324792149408  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792149600         sin  knd 5 0  typ 94324792149696  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792149888         cos  knd 5 0  typ 94324792149984  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792150176       trsin  knd 5 0  typ 94324792150272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792150464        sqrt  knd 5 0  typ 94324792150560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792150752       round  knd 5 0  typ 94324792150848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94324792151040      iround  knd 5 0  typ 94324792151136  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94324792151328         ord  knd 5 0  typ 94324792151424  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94324792151616         new  knd 5 0  typ 94324792151712  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94324792151904       trnew  knd 5 0  typ 94324792152000  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94324792152192       write  knd 5 0  typ 94324792152288  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94324792152480     writeln  knd 5 0  typ 94324792152576  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94324792152768      writef  knd 5 0  typ 94324792152864  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94324792153056    writelnf  knd 5 0  typ 94324792153152  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94324792153344      writei  knd 5 0  typ 94324792153440  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94324792153632    writelni  knd 5 0  typ 94324792153728  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94324792153920        read  knd 5 0  typ 94324792154016  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94324792154208      readln  knd 5 0  typ 94324792154304  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94324792154496         eof  knd 5 0  typ 94324792154592  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94324792180816     complex  TYPE   typ 94324792180528  lvl  1  siz    16  off     0
(RECORD (re real)
        (im real))
 94324792181936          ac  VAR    0 typ 94324792181840  lvl  1  siz   160  off     0
(ARRAY   1 ..  10 (RECORD (re real)
                          (im real)))
 94324792182288           y  VAR    1 typ    real  lvl  1  siz     8  off   160
yyparse result =        0
(program graph1 (progn output)
                (progn (:= y (aref ac (+ (+ -16
                                            (* 16
                                               7))
                                         0)))))
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
        subq	$192, %rsp 	  # make space for this stack frame
	movq	%rbx, %r9        # save %rbx (callee-saved) in %r9
# ------------------------- begin Your code -----------------------------
	movl	-192(%rbp),%eax     	#  ac -> %eax
	movl	$-16,%ecx         	#  -16 -> %ecx
	movl	$16,%edx         	#  16 -> %edx
	movl	$7,%ebx         	#  7 -> %ebx
	imull	%ebx,%edx         	#  %edx * %ebx -> %edx
	addl	%edx,%ecx         	#  %ecx + %edx -> %ecx
	movl	$0,%edx         	#  0 -> %edx
	addl	%edx,%ecx         	#  %ecx + %edx -> %ecx
	movl	%ecx,%eax         	#  %ecx -> %eax
	movsd	%eax,-32(%rbp)     	#  %eax -> y
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
