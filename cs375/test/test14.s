Symbol table level 0
 93883114373792        real  BASIC  basicdt   1          siz     8
 93883114373888     integer  BASIC  basicdt   0          siz     4
 93883114373984        char  BASIC  basicdt   2          siz     1
 93883114374080     boolean  BASIC  basicdt   3          siz     4
 93883114374176         exp  knd 5 0  typ 93883114374272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114374464       trexp  knd 5 0  typ 93883114374560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114374752         sin  knd 5 0  typ 93883114374848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114375040         cos  knd 5 0  typ 93883114375136  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114375328       trsin  knd 5 0  typ 93883114375424  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114375616        sqrt  knd 5 0  typ 93883114375712  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114375904       round  knd 5 0  typ 93883114376000  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 93883114376192      iround  knd 5 0  typ 93883114376288  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 93883114376480         ord  knd 5 0  typ 93883114376576  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93883114376768         new  knd 5 0  typ 93883114376864  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93883114377056       trnew  knd 5 0  typ 93883114377152  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 93883114377344       write  knd 5 0  typ 93883114377440  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93883114377632     writeln  knd 5 0  typ 93883114377728  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 93883114377920      writef  knd 5 0  typ 93883114378016  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93883114378208    writelnf  knd 5 0  typ 93883114378304  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 93883114378496      writei  knd 5 0  typ 93883114378592  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93883114378784    writelni  knd 5 0  typ 93883114378880  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 93883114379072        read  knd 5 0  typ 93883114379168  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93883114379360      readln  knd 5 0  typ 93883114379456  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 93883114379648         eof  knd 5 0  typ 93883114379744  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 93883114405456         ptr  VAR    4 typ 93883114405360  lvl  1  siz     8  off     0
(^ integer)
 93883114405872           i  VAR    0 typ integer  lvl  1  siz     4  off     8
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
