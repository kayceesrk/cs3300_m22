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
         la $t2 BBS_Init
         sw $t2, 12($t0)
         la $t2 BBS_Print
         sw $t2, 8($t0)
         la $t2 BBS_Sort
         sw $t2, 4($t0)
         la $t2 BBS_Start
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
         .globl           BBS_Start
BBS_Start:
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
         lw $t2 8($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         li $t0 99999
         move $a0 $t0
         jal _print
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 4($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           BBS_Sort
BBS_Sort:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         lw $t0 8($s0)
         li $t1 1
         sub $t2, $t0, $t1
         li $t0 0
         sub $t1, $t0, 1
L2:nop
         slt $t0, $t1, $t2
         beqz $t0 L3
         li $t0 1
L4:      nop
         li $t3 1
         add $t4, $t2, $t3
         slt $t3, $t0, $t4
         beqz $t3 L5
         sub $t3, $t0, 1
         lw $t4 4($s0)
         mul $t5, $t3, 4
         lw $t4 4($s0)
         lw $t3 0($t4)
         li $t6 1
         slt $t7, $t5, $t3
         sub $t3, $t6, $t7
         beqz $t3 L6
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L6:      nop
         li $t3 4
         move $t6 $t3
         add $t3, $t5, $t6
         move $t5 $t3
         add $t3, $t4, $t5
         lw $t4 0($t3)
         move $t3 $t4
         lw $t4 4($s0)
         mul $t5, $t0, 4
         lw $t4 4($s0)
         lw $t6 0($t4)
         li $t7 1
         slt $t8, $t5, $t6
         sub $t6, $t7, $t8
         beqz $t6 L7
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L7:      nop
         li $t6 4
         move $t7 $t6
         add $t6, $t5, $t7
         move $t5 $t6
         add $t6, $t4, $t5
         lw $t4 0($t6)
         move $t5 $t4
         slt $t4, $t5, $t3
         beqz $t4 L8
         sub $t3, $t0, 1
         lw $t4 4($s0)
         mul $t5, $t3, 4
         lw $t4 4($s0)
         lw $t6 0($t4)
         li $t7 1
         slt $t8, $t5, $t6
         sub $t6, $t7, $t8
         beqz $t6 L10
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L10:     nop
         li $t6 4
         move $t7 $t6
         add $t6, $t5, $t7
         move $t5 $t6
         add $t6, $t4, $t5
         lw $t4 0($t6)
         move $t5 $t4
         li $t4 1
         mul $t6, $t4, 4
         add $t4, $s0, $t6
         lw $t7 0($t4)
         mul $t4, $t3, 4
         li $t3 1
         mul $t6, $t3, 4
         add $t3, $s0, $t6
         lw $t7 0($t3)
         lw $t3 0($t7)
         li $t6 1
         slt $t8, $t4, $t3
         sub $t3, $t6, $t8
         beqz $t3 L11
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L11:     nop
         li $t3 4
         move $t6 $t3
         add $t3, $t4, $t6
         move $t4 $t3
         add $t3, $t7, $t4
         lw $t4 4($s0)
         mul $t6, $t0, 4
         lw $t4 4($s0)
         lw $t7 0($t4)
         li $t8 1
         slt $t9, $t6, $t7
         sub $t7, $t8, $t9
         beqz $t7 L12
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L12:     nop
         li $t7 4
         move $t8 $t7
         add $t7, $t6, $t8
         move $t6 $t7
         add $t7, $t4, $t6
         lw $t4 0($t7)
         sw $t4, 0($t3)
         li $t3 1
         mul $t4, $t3, 4
         add $t3, $s0, $t4
         lw $t6 0($t3)
         mul $t3, $t0, 4
         li $t7 1
         mul $t4, $t7, 4
         add $t7, $s0, $t4
         lw $t6 0($t7)
         lw $t4 0($t6)
         li $t7 1
         slt $t8, $t3, $t4
         sub $t4, $t7, $t8
         beqz $t4 L13
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L13:     nop
         li $t4 4
         move $t7 $t4
         add $t4, $t3, $t7
         move $t3 $t4
         add $t4, $t6, $t3
         sw $t5, 0($t4)
         b L9
L8:      nop
L9:      nop
         add $t0, $t0, 1
         b L4
L5:      nop
         sub $t2, $t2, 1
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
         .globl           BBS_Print
BBS_Print:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         li $t0 0
L14:nop
         lw $t1 8($s0)
         slt $t2, $t0, $t1
         beqz $t2 L15
         lw $t1 4($s0)
         mul $t2, $t0, 4
         lw $t1 4($s0)
         lw $t3 0($t1)
         li $t4 1
         slt $t5, $t2, $t3
         sub $t3, $t4, $t5
         beqz $t3 L16
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L16:     nop
         li $t3 4
         move $t4 $t3
         add $t3, $t2, $t4
         move $t2 $t3
         add $t3, $t1, $t2
         lw $t1 0($t3)
         move $a0 $t1
         jal _print
         add $t0, $t0, 1
         b L14
L15:     nop
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           BBS_Init
BBS_Init:
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
L17:nop
         li $t2 1
         add $t3, $s1, $t2
         li $t2 4
         move $t4 $t2
         mul $t2, $t3, $t4
         slt $t3, $t1, $t2
         beqz $t3 L18
         add $t2, $t0, $t1
         li $t3 0
         sw $t3, 0($t2)
         add $t1, $t1, 4
         b L17
L18:     nop
         li $t1 4
         mul $t2, $s1, $t1
         sw $t2, 0($t0)
         sw $t0, 4($s0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 0
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L19
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L19:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 20
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 1
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L20
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L20:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 7
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 2
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L21
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L21:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 12
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 3
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L22
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L22:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 18
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 4
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L23
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L23:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 2
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 5
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L24
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L24:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 11
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 6
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L25
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L25:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 6
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 7
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L26
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L26:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 9
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 8
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L27
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L27:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 19
         sw $t1, 0($t0)
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         li $t0 9
         mul $t3, $t0, 4
         li $t0 1
         mul $t1, $t0, 4
         add $t0, $s0, $t1
         lw $t2 0($t0)
         lw $t0 0($t2)
         li $t1 1
         slt $t4, $t3, $t0
         sub $t0, $t1, $t4
         beqz $t0 L28
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L28:     nop
         li $t0 4
         move $t1 $t0
         add $t0, $t3, $t1
         move $t1 $t0
         add $t0, $t2, $t1
         li $t1 5
         sw $t1, 0($t0)
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
