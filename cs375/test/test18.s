Symbol table level 0
 94176902009504        real  BASIC  basicdt   1          siz     8
 94176902009600     integer  BASIC  basicdt   0          siz     4
 94176902009696        char  BASIC  basicdt   2          siz     1
 94176902009792     boolean  BASIC  basicdt   3          siz     4
 94176902009888         exp  knd 5 0  typ 94176902009984  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902010176       trexp  knd 5 0  typ 94176902010272  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902010464         sin  knd 5 0  typ 94176902010560  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902010752         cos  knd 5 0  typ 94176902010848  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902011040       trsin  knd 5 0  typ 94176902011136  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902011328        sqrt  knd 5 0  typ 94176902011424  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902011616       round  knd 5 0  typ 94176902011712  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94176902011904      iround  knd 5 0  typ 94176902012000  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94176902012192         ord  knd 5 0  typ 94176902012288  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94176902012480         new  knd 5 0  typ 94176902012576  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94176902012768       trnew  knd 5 0  typ 94176902012864  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94176902013056       write  knd 5 0  typ 94176902013152  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94176902013344     writeln  knd 5 0  typ 94176902013440  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94176902013632      writef  knd 5 0  typ 94176902013728  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94176902013920    writelnf  knd 5 0  typ 94176902014016  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94176902014208      writei  knd 5 0  typ 94176902014304  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94176902014496    writelni  knd 5 0  typ 94176902014592  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94176902014784        read  knd 5 0  typ 94176902014880  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94176902015072      readln  knd 5 0  typ 94176902015168  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94176902015360         eof  knd 5 0  typ 94176902015456  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
yyparse result =        0
(program graph1 (progn output)
                (progn (funcall write 'i = ')))
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
        subq	$16, %rsp 	  # make space for this stack frame
	movq	%rbx, %r9        # save %rbx (callee-saved) in %r9
# ------------------------- begin Your code -----------------------------
	leaq	.LC1(%rip),%rdi  	#  addr of literal .LC1
	call	write@PLT          	#  write()
# ----------------------- begin Epilogue code ---------------------------
	movq	%r9, %rbx        # restore %rbx (callee-saved) from %r9
        leave
        ret
        .cfi_endproc
.LFE0:
        .size   graph1, .-graph1
# ----------------- end Epilogue; Literal data follows ------------------
        .section        .rodata
	.align  4
.LC1:
	.string	"i = "

        .ident  "CS 375 Compiler - Spring 2022"
