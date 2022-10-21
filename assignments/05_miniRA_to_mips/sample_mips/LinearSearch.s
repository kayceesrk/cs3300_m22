         .text
         .globl           main
main:
         move $fp, $sp
         subu $sp, $sp, 4
         sw $ra, -4($fp)
         li $a0 16
         jal _halloc
         move $t0 $v0
         li $a0 12
         jal _halloc
         move $t1 $v0
         la $t2 LS_Init
         sw $t2, 12($t0)
         la $t2 LS_Search
         sw $t2, 8($t0)
         la $t2 LS_Print
         sw $t2, 4($t0)
         la $t2 LS_Start
         sw $t2, 0($t0)
         li $t2 4
L0:nop
         li $t3 12
         slt $t4, $t2, $t3
         beqz $t4 L1
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L0
L1:      nop
         sw $t0, 0($t1)
         move $t0 $t1
         lw $t1 0($t0)
         lw $t2 0($t1)
         li $t1 10
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         lw $ra, -4($fp)
         addu $sp, $sp, 4
         j $ra

         .text
         .globl           LS_Start
LS_Start:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         move $a1 $s1
         jalr $t2
         move $t1 $v0
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 4($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         li $t0 9999
         move $a0 $t0
         jal _print
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         li $t1 8
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         li $t1 12
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         li $t1 17
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         li $t1 50
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         li $t0 55
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           LS_Print
LS_Print:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         li $t0 1
L2:nop
         lw $t1 8($s0)
         slt $t2, $t0, $t1
         beqz $t2 L3
         lw $t1 4($s0)
         mul $t2, $t0, 4
         lw $t1 4($s0)
         lw $t3 0($t1)
         li $t4 1
         slt $t5, $t2, $t3
         sub $t3, $t4, $t5
         beqz $t3 L4
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L4:      nop
         li $t3 4
         move $t4 $t3
         add $t3, $t2, $t4
         move $t2 $t3
         add $t3, $t1, $t2
         lw $t1 0($t3)
         move $a0 $t1
         jal _print
         add $t0, $t0, 1
         b L2
L3:      nop
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           LS_Search
LS_Search:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         li $t0 1
         li $t1 0
L5:nop
         lw $t2 8($s0)
         slt $t3, $t0, $t2
         beqz $t3 L6
         lw $t2 4($s0)
         mul $t3, $t0, 4
         lw $t2 4($s0)
         lw $t4 0($t2)
         li $t5 1
         slt $t6, $t3, $t4
         sub $t4, $t5, $t6
         beqz $t4 L7
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L7:      nop
         li $t4 4
         move $t5 $t4
         add $t4, $t3, $t5
         move $t3 $t4
         add $t4, $t2, $t3
         lw $t2 0($t4)
         move $t3 $t2
         add $t2, $s1, 1
         slt $t4, $t3, $s1
         beqz $t4 L8
         b L9
L8:      nop
         li $t4 1
         slt $t5, $t3, $t2
         sub $t2, $t4, $t5
         beqz $t2 L10
         b L11
L10:     nop
         li $t1 1
         lw $t2 8($s0)
         move $t0 $t2
L11:     nop
L9:     nop
         add $t0, $t0, 1
         b L5
L6:      nop
         move $v0 $t1
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           LS_Init
LS_Init:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 8($s0)
         add $t0, $s1, 1
         li $t1 4
         mul $t2, $t0, $t1
         move $a0 $t2
         jal _halloc
         move $t0 $v0
         li $t1 4
L12: nop
         li $t2 1
         add $t3, $s1, $t2
         li $t2 4
         move $t4 $t2
         mul $t2, $t3, $t4
         slt $t3, $t1, $t2
         beqz $t3 L13
         add $t2, $t0, $t1
         li $t3 0
         sw $t3, 0($t2)
         add $t1, $t1, 4
         b L12
L13:     nop
         li $t1 4
         mul $t2, $s1, $t1
         sw $t2, 0($t0)
         sw $t0, 4($s0)
         li $t0 1
         lw $t1 8($s0)
         li $t2 1
         add $t3, $t1, $t2
L14:     nop
         lw $t1 8($s0)
         slt $t2, $t0, $t1
         beqz $t2 L15
         li $t1 2
         mul $t2, $t1, $t0
         sub $t1, $t3, 3
         li $t4 1
         mul $t5, $t4, 4
         add $t4, $s0, $t5
         lw $t6 0($t4)
         mul $t4, $t0, 4
         li $t7 1
         mul $t5, $t7, 4
         add $t7, $s0, $t5
         lw $t6 0($t7)
         lw $t5 0($t6)
         li $t7 1
         slt $t8, $t4, $t5
         sub $t5, $t7, $t8
         beqz $t5 L16
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L16:     nop
         li $t5 4
         move $t7 $t5
         add $t5, $t4, $t7
         move $t4 $t5
         add $t5, $t6, $t4
         add $t4, $t2, $t1
         sw $t4, 0($t5)
         add $t0, $t0, 1
         sub $t3, $t3, 1
         b L14
L15:     nop
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
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
