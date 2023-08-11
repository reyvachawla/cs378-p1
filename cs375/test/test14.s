Symbol table level 0
 94814360310432        real  BASIC  basicdt   1          siz     8
 94814360310528     integer  BASIC  basicdt   0          siz     4
 94814360310624        char  BASIC  basicdt   2          siz     1
 94814360310720     boolean  BASIC  basicdt   3          siz     4
 94814360310816         exp  knd 5 0  typ 94814360310912  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360311104       trexp  knd 5 0  typ 94814360311200  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360311392         sin  knd 5 0  typ 94814360311488  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360311680         cos  knd 5 0  typ 94814360311776  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360311968       trsin  knd 5 0  typ 94814360312064  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360312256        sqrt  knd 5 0  typ 94814360312352  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360312544       round  knd 5 0  typ 94814360312640  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94814360312832      iround  knd 5 0  typ 94814360312928  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94814360313120         ord  knd 5 0  typ 94814360313216  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94814360313408         new  knd 5 0  typ 94814360313504  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94814360313696       trnew  knd 5 0  typ 94814360313792  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94814360313984       write  knd 5 0  typ 94814360314080  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94814360314272     writeln  knd 5 0  typ 94814360314368  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94814360314560      writef  knd 5 0  typ 94814360314656  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94814360314848    writelnf  knd 5 0  typ 94814360314944  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94814360315136      writei  knd 5 0  typ 94814360315232  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94814360315424    writelni  knd 5 0  typ 94814360315520  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94814360315712        read  knd 5 0  typ 94814360315808  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94814360316000      readln  knd 5 0  typ 94814360316096  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94814360316288         eof  knd 5 0  typ 94814360316384  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94814360342096         ptr  VAR    4 typ 94814360342000  lvl  1  siz     8  off     0
(^ integer)
 94814360342512           i  VAR    0 typ integer  lvl  1  siz     4  off     8
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
