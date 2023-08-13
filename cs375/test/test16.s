Symbol table level 0
 94566919578272        real  BASIC  basicdt   1          siz     8
 94566919578368     integer  BASIC  basicdt   0          siz     4
 94566919578464        char  BASIC  basicdt   2          siz     1
 94566919578560     boolean  BASIC  basicdt   3          siz     4
 94566919578656         exp  knd 5 0  typ 94566919578752  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919578944       trexp  knd 5 0  typ 94566919579040  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919579232         sin  knd 5 0  typ 94566919579328  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919579520         cos  knd 5 0  typ 94566919579616  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919579808       trsin  knd 5 0  typ 94566919579904  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919580096        sqrt  knd 5 0  typ 94566919580192  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919580384       round  knd 5 0  typ 94566919580480  lvl  0  siz     0  off     0
(FUNCTION real
          real)
 94566919580672      iround  knd 5 0  typ 94566919580768  lvl  0  siz     0  off     0
(FUNCTION integer
          real)
 94566919580960         ord  knd 5 0  typ 94566919581056  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94566919581248         new  knd 5 0  typ 94566919581344  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94566919581536       trnew  knd 5 0  typ 94566919581632  lvl  0  siz     0  off     0
(FUNCTION integer
          integer)
 94566919581824       write  knd 5 0  typ 94566919581920  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94566919582112     writeln  knd 5 0  typ 94566919582208  lvl  0  siz     0  off     0
(FUNCTION NULL
          char)
 94566919582400      writef  knd 5 0  typ 94566919582496  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94566919582688    writelnf  knd 5 0  typ 94566919582784  lvl  0  siz     0  off     0
(FUNCTION NULL
          real)
 94566919582976      writei  knd 5 0  typ 94566919583072  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94566919583264    writelni  knd 5 0  typ 94566919583360  lvl  0  siz     0  off     0
(FUNCTION NULL
          integer)
 94566919583552        read  knd 5 0  typ 94566919583648  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94566919583840      readln  knd 5 0  typ 94566919583936  lvl  0  siz     0  off     0
(FUNCTION NULL
          NULL)
 94566919584128         eof  knd 5 0  typ 94566919584224  lvl  0  siz     0  off     0
(FUNCTION boolean
          NULL)
Symbol table level 1
 94566919609840           n  VAR    0 typ integer  lvl  1  siz     4  off     0
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
