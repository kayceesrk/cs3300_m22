         .text
         .globl           main
main:
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         li $a0 8
         jal _halloc
         move $t0 $v0
         li $a0 4
         jal _halloc
         move $t1 $v0
         la $t2 MT4_Change
         sw $t2, 4($t0)
         la $t2 MT4_Start
         sw $t2, 0($t0)
         sw $t0, 0($t1)
         move $t0 $t1
         lw $t1 0($t0)
         lw $t2 0($t1)
         li $t1 1
         li $t3 2
         li $t4 3
         li $t5 4
         li $t6 5
         li $t7 6
         move $a0 $t0
         move $a1 $t1
         move $a2 $t3
         move $a3 $t4
         sw $t5, 0($sp)
         sw $t6, 4($sp)
         sw $t7, 8($sp)
         jalr $t2
         move $t8 $v0
         move $a0 $t8
         jal _print
         lw $ra, -4($fp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           MT4_Start
MT4_Start:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 48
         sw $ra, -4($fp)
         sw $s0, 24($sp)
         sw $s1, 28($sp)
         sw $s2, 32($sp)
         sw $s3, 36($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $a2
         move $s3 $a3
         move $a0 $s1
         jal _print
         move $a0 $s2
         jal _print
         move $a0 $s3
         jal _print
         lw $v1, 0($fp)
         move $a0 $v1
         jal _print
         lw $v1, 4($fp)
         move $a0 $v1
         jal _print
         lw $v1, 8($fp)
         move $a0 $v1
         jal _print
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 4($t1)
         move $a0 $t0
         lw $v1, 8($fp)
         move $a1 $v1
         lw $v0, 4($fp)
         move $a2 $v0
         lw $v0, 0($fp)
         move $a3 $v0
         sw $s3, 0($sp)
         sw $s2, 4($sp)
         sw $s1, 8($sp)
         jalr $t2
         move $t1 $v0
         move $t0 $t1
         move $v0 $t0
         lw $s0, 24($sp)
         lw $s1, 28($sp)
         lw $s2, 32($sp)
         lw $s3, 36($sp)
         lw $ra, -4($fp)
         lw $fp, 40($sp)
         addu $sp, $sp, 48
         j $ra

         .text
         .globl           MT4_Change
MT4_Change:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 36
         sw $ra, -4($fp)
         sw $s0, 12($sp)
         sw $s1, 16($sp)
         sw $s2, 20($sp)
         sw $s3, 24($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $a2
         move $s3 $a3
         move $a0 $s1
         jal _print
         move $a0 $s2
         jal _print
         move $a0 $s3
         jal _print
         lw $v1, 0($fp)
         move $a0 $v1
         jal _print
         lw $v1, 4($fp)
         move $a0 $v1
         jal _print
         lw $v1, 8($fp)
         move $a0 $v1
         jal _print
         li $t0 0
         move $v0 $t0
         lw $s0, 12($sp)
         lw $s1, 16($sp)
         lw $s2, 20($sp)
         lw $s3, 24($sp)
         lw $ra, -4($fp)
         lw $fp, 28($sp)
         addu $sp, $sp, 36
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
         .align   0
newl:    .asciiz "\n" 
         .data
         .align   0
str_er:  .asciiz " ERROR: abnormal termination\n" 
