	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20000412-4.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.sub 	$8=, $0, $2
	i32.const	$5=, 0
	i32.gt_s	$6=, $8, $5
	i32.select	$9=, $6, $8, $5
	block
	i32.const	$push0=, 3
	i32.ge_s	$push1=, $9, $pop0
	br_if   	$pop1, 0        # 0: down to label0
# BB#1:                                 # %for.body.lr.ph
	i32.const	$7=, -1
	i32.select	$push2=, $6, $8, $5
	i32.add 	$push3=, $2, $pop2
	i32.add 	$push4=, $pop3, $7
	i32.sub 	$push5=, $pop4, $0
	i32.mul 	$push6=, $3, $pop5
	i32.add 	$push7=, $2, $pop6
	i32.sub 	$8=, $pop7, $1
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label1:
	i32.add 	$8=, $8, $3
	i32.le_s	$push9=, $8, $7
	br_if   	$pop9, 1        # 1: down to label2
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$push8=, 1
	i32.add 	$9=, $9, $pop8
	i32.const	$push10=, 2
	i32.le_s	$push11=, $9, $pop10
	br_if   	$pop11, 0       # 0: up to label1
	br      	2               # 2: down to label0
.LBB0_4:                                # %if.then
	end_loop                        # label2:
	call    	abort@FUNCTION
	unreachable
.LBB0_5:                                # %for.cond6.preheader
	end_block                       # label0:
	return
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.param  	i32, i32
	.result 	i32
# BB#0:                                 # %for.cond.i.2.1
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
