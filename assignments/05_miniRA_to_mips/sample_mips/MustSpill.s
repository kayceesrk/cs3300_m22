	.text
	.globl	main
main:
	move $fp, $sp
	sw $ra, -4($fp)
	subu $sp, $sp, 8
	jalr Test35
	move $s0 $v0
	move $a0 $s0
	jalr _print
	addu $sp, $sp, 8
	lw $ra, -4($fp)
	j $ra

	.text
	.globl	Test35
Test35:
	sw $fp, -8($sp)
	move $fp, $sp
	sw $ra, -4($fp)
	subu $sp, $sp, 108
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $s3, 12($sp)
	sw $s4, 16($sp)
	sw $s5, 20($sp)
	sw $s6, 24($sp)
	sw $s7, 28($sp)
	li $v0 0
	sw $v0, 32($sp)
	li $v0 1
	sw $v0, 36($sp)
	li $v0 2
	sw $v0, 40($sp)
	li $v0 3
	sw $v0, 44($sp)
	li $v0 4
	sw $v0, 48($sp)
	li $v0 5
	sw $v0, 52($sp)
	li $v0 6
	sw $v0, 56($sp)
	li $v0 7
	sw $v0, 60($sp)
	li $v0 8
	sw $v0, 64($sp)
	li $v0 9
	sw $v0, 68($sp)
	li $v0 10
	sw $v0, 72($sp)
	li $v0 11
	sw $v0, 76($sp)
	li $v0 12
	sw $v0, 80($sp)
	li $v0 13
	sw $v0, 84($sp)
	li $v0 14
	sw $v0, 88($sp)
	li $v0 15
	sw $v0, 92($sp)
	li $t8 16
	li $t9 17
	li $s0 18
	li $s1 19
	li $s2 20
	li $s3 21
	li $s4 22
	li $s5 23
	li $s6 24
	li $s7 25
	li $t0 26
	li $t1 27
	li $t2 28
	li $t3 29
	li $t4 30
	li $t5 31
	li $t6 32
	li $t7 33
	move $a0 $t7
	jalr _print
	move $a0 $t6
	jalr _print
	move $a0 $t5
	jalr _print
	move $a0 $t4
	jalr _print
	move $a0 $t3
	jalr _print
	move $a0 $t2
	jalr _print
	move $a0 $t1
	jalr _print
	move $a0 $t0
	jalr _print
	move $a0 $s7
	jalr _print
	move $a0 $s6
	jalr _print
	move $a0 $s5
	jalr _print
	move $a0 $s4
	jalr _print
	move $a0 $s3
	jalr _print
	move $a0 $s2
	jalr _print
	move $a0 $s1
	jalr _print
	move $a0 $s0
	jalr _print
	move $a0 $t9
	jalr _print
	move $a0 $t8
	jalr _print
	lw $v0, 92($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 88($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 84($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 80($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 76($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 72($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 68($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 64($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 60($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 56($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 52($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 48($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 44($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 40($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 36($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 32($sp)
	move $a0 $v0
	jalr _print
	lw $v0, 32($sp)
	move $v0 $v0
	lw $s0, 0($sp)
	lw $s1, 4($sp)
	lw $s2, 8($sp)
	lw $s3, 12($sp)
	lw $s4, 16($sp)
	lw $s5, 20($sp)
	lw $s6, 24($sp)
	lw $s7, 28($sp)
	addu $sp, $sp, 108
	lw $ra, -4($fp)
	lw $fp, -8($sp)
	j $ra

	.text
	.globl _halloc

_halloc:
	li $v0, 9
	syscall
	j $ra

	.text
	.globl _print
_print:
	li $v0, 1
	syscall
	la $a0, newl
	li $v0, 4
	syscall
	j $ra

	.data
	.align 0
newl:	.asciiz "\n"
	.data
	.align 0
str_er:	.asciiz "ERROR: abnormal termination\n"
