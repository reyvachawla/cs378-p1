Symbol table level 0
 94619541881504        real  BASIC  basicdt   1          siz     8
 94619541881600     integer  BASIC  basicdt   0          siz     4
 94619541881696        char  BASIC  basicdt   2          siz     1
 94619541881792     boolean  BASIC  basicdt   3          siz     4
 94619541881888         exp  knd 5 0  typ 94619541881984  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541882176       trexp  knd 5 0  typ 94619541882272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541882464         sin  knd 5 0  typ 94619541882560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541882752         cos  knd 5 0  typ 94619541882848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541883040       trsin  knd 5 0  typ 94619541883136  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541883328        sqrt  knd 5 0  typ 94619541883424  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541883616       round  knd 5 0  typ 94619541883712  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94619541883904      iround  knd 5 0  typ 94619541884000  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94619541884192         ord  knd 5 0  typ 94619541884288  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94619541884480         new  knd 5 0  typ 94619541884576  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94619541884768       trnew  knd 5 0  typ 94619541884864  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94619541885056       write  knd 5 0  typ 94619541885152  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94619541885344     writeln  knd 5 0  typ 94619541885440  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94619541885632      writef  knd 5 0  typ 94619541885728  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94619541885920    writelnf  knd 5 0  typ 94619541886016  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94619541886208      writei  knd 5 0  typ 94619541886304  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94619541886496    writelni  knd 5 0  typ 94619541886592  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94619541886784        read  knd 5 0  typ 94619541886880  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94619541887072      readln  knd 5 0  typ 94619541887168  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94619541887360         eof  knd 5 0  typ 94619541887456  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94619541913680     complex  TYPE   typ 94619541913392  lvl  1  siz    16  off     0
(RECORD (re real)
        (im real))
 94619541914800          ac  VAR    0 typ 94619541914704  lvl  1  siz   160  off     0
(ARRAY   1 ..  10 (RECORD (re real)
                          (im real)))
 94619541915152           y  VAR    1 typ    real  lvl  1  siz     8  off   160
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
