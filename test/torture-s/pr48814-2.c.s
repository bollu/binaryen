	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr48814-2.c"
	.section	.text.incr,"ax",@progbits
	.hidden	incr
	.globl	incr
	.type	incr,@function
incr:                                   # @incr
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.load	$push0=, count($0)
	i32.const	$push1=, 1
	i32.add 	$push2=, $pop0, $pop1
	i32.store	$push3=, count($0), $pop2
	return  	$pop3
.Lfunc_end0:
	.size	incr, .Lfunc_end0-incr

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.load	$1=, count($0)
	i32.const	$push1=, 1
	i32.add 	$2=, $1, $pop1
	i32.const	$3=, 2
	i32.const	$4=, arr
	block
	i32.shl 	$push2=, $2, $3
	i32.add 	$push3=, $4, $pop2
	i32.store	$discard=, 0($pop3), $2
	i32.add 	$push0=, $1, $3
	i32.store	$2=, count($0), $pop0
	br_if   	$1, 0           # 0: down to label0
# BB#1:                                 # %lor.lhs.false
	i32.shl 	$push4=, $2, $3
	i32.add 	$push5=, $4, $pop4
	i32.load	$push6=, 0($pop5)
	i32.const	$push7=, 3
	i32.ne  	$push8=, $pop6, $pop7
	br_if   	$pop8, 0        # 0: down to label0
# BB#2:                                 # %if.end
	return  	$0
.LBB1_3:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	arr                     # @arr
	.type	arr,@object
	.section	.data.arr,"aw",@progbits
	.globl	arr
	.align	4
arr:
	.int32	1                       # 0x1
	.int32	2                       # 0x2
	.int32	3                       # 0x3
	.int32	4                       # 0x4
	.size	arr, 16

	.hidden	count                   # @count
	.type	count,@object
	.section	.bss.count,"aw",@nobits
	.globl	count
	.align	2
count:
	.int32	0                       # 0x0
	.size	count, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
