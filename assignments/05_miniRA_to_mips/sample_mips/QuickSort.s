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
         la $t2 QS_Init
         sw $t2, 12($t0)
         la $t2 QS_Print
         sw $t2, 8($t0)
         la $t2 QS_Sort
         sw $t2, 4($t0)
         la $t2 QS_Start
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
         .globl           QS_Start
QS_Start:
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
         move $t2 $t1
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t2 $t1
         li $t0 9999
         move $a0 $t0
         jal _print
         lw $t0 8($s0)
         li $t1 1
         sub $t2, $t0, $t1
         move $t0 $s0
         lw $t1 0($t0)
         lw $t3 4($t1)
         li $t1 0
         move $a0 $t0
         move $a1 $t1
         move $a2 $t2
         jalr $t3
         move $t4 $v0
         move $t2 $t4
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 8($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t2 $t1
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           QS_Sort
QS_Sort:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 28
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         sw $s3, 12($sp)
         sw $s4, 16($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $a2
         li $t0 0
         slt $t1, $s1, $s2
         beqz $t1 L2
         lw $t1 4($s0)
         mul $t2, $s2, 4
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
         move $t2 $t1
         sub $s3, $s1, 1
         move $t1 $s2
         li $t3 1
L5:      nop
         beqz $t3 L6
         li $t4 1
L7:      nop
         beqz $t4 L8
         add $s3, $s3, 1
         lw $t5 4($s0)
         mul $t6, $s3, 4
         lw $t5 4($s0)
         lw $t7 0($t5)
         li $t8 1
         slt $t9, $t6, $t7
         sub $t7, $t8, $t9
         beqz $t7 L9
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L9:      nop
         li $t7 4
         move $t8 $t7
         add $t7, $t6, $t8
         move $t6 $t7
         add $t7, $t5, $t6
         lw $t5 0($t7)
         move $t6 $t5
         li $t5 1
         slt $t7, $t6, $t2
         sub $t8, $t5, $t7
         beqz $t8 L10
         li $t4 0
         b L11
L10:     nop
         li $t4 1
L11:     nop
         b L7
L8:      nop
         li $t4 1
L12:      nop
         beqz $t4 L13
         sub $t1, $t1, 1
         lw $t5 4($s0)
         mul $t7, $t1, 4
         lw $t5 4($s0)
         lw $t8 0($t5)
         li $t9 1
         slt $s4, $t7, $t8
         sub $t8, $t9, $s4
         beqz $t8 L14
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L14:     nop
         li $t8 4
         move $t9 $t8
         add $t8, $t7, $t9
         move $t7 $t8
         add $t8, $t5, $t7
         lw $t5 0($t8)
         move $t6 $t5
         li $t5 1
         slt $t7, $t2, $t6
         sub $t6, $t5, $t7
         beqz $t6 L15
         li $t4 0
         b L16
L15:     nop
         li $t4 1
L16:     nop
         b L12
L13:     nop
         lw $t4 4($s0)
         mul $t5, $s3, 4
         lw $t4 4($s0)
         lw $t6 0($t4)
         li $t7 1
         slt $t8, $t5, $t6
         sub $t6, $t7, $t8
         beqz $t6 L17
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L17:     nop
         li $t6 4
         move $t7 $t6
         add $t6, $t5, $t7
         move $t5 $t6
         add $t6, $t4, $t5
         lw $t4 0($t6)
         move $t0 $t4
         li $t4 1
         mul $t5, $t4, 4
         add $t4, $s0, $t5
         lw $t6 0($t4)
         mul $t4, $s3, 4
         li $t7 1
         mul $t5, $t7, 4
         add $t7, $s0, $t5
         lw $t6 0($t7)
         lw $t5 0($t6)
         li $t7 1
         slt $t8, $t4, $t5
         sub $t5, $t7, $t8
         beqz $t5 L18
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L18:     nop
         li $t5 4
         move $t7 $t5
         add $t5, $t4, $t7
         move $t4 $t5
         add $t5, $t6, $t4
         lw $t4 4($s0)
         mul $t6, $t1, 4
         lw $t4 4($s0)
         lw $t7 0($t4)
         li $t8 1
         slt $t9, $t6, $t7
         sub $t7, $t8, $t9
         beqz $t7 L19
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L19:     nop
         li $t7 4
         move $t8 $t7
         add $t7, $t6, $t8
         move $t6 $t7
         add $t7, $t4, $t6
         lw $t4 0($t7)
         sw $t4, 0($t5)
         li $t4 1
         mul $t5, $t4, 4
         add $t4, $s0, $t5
         lw $t6 0($t4)
         mul $t4, $t1, 4
         li $t7 1
         mul $t5, $t7, 4
         add $t7, $s0, $t5
         lw $t6 0($t7)
         lw $t5 0($t6)
         li $t7 1
         slt $t8, $t4, $t5
         sub $t5, $t7, $t8
         beqz $t5 L20
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L20:     nop
         li $t5 4
         move $t7 $t5
         add $t5, $t4, $t7
         move $t4 $t5
         add $t5, $t6, $t4
         sw $t0, 0($t5)
         li $t4 1
         add $t5, $s3, $t4
         slt $t4, $t1, $t5
         beqz $t4 L21
         li $t3 0
         b L22
L21:     nop
         li $t3 1
L22:     nop
         b L5
L6:      nop
         li $t2 1
         mul $t3, $t2, 4
         add $t2, $s0, $t3
         lw $t4 0($t2)
         mul $t2, $t1, 4
         li $t1 1
         mul $t3, $t1, 4
         add $t1, $s0, $t3
         lw $t4 0($t1)
         lw $t1 0($t4)
         li $t3 1
         slt $t5, $t2, $t1
         sub $t1, $t3, $t5
         beqz $t1 L23
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L23:     nop
         li $t1 4
         move $t3 $t1
         add $t1, $t2, $t3
         move $t2 $t1
         add $t1, $t4, $t2
         lw $t2 4($s0)
         mul $t3, $s3, 4
         lw $t2 4($s0)
         lw $t4 0($t2)
         li $t5 1
         slt $t6, $t3, $t4
         sub $t4, $t5, $t6
         beqz $t4 L24
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L24:     nop
         li $t4 4
         move $t5 $t4
         add $t4, $t3, $t5
         move $t3 $t4
         add $t4, $t2, $t3
         lw $t2 0($t4)
         sw $t2, 0($t1)
         li $t1 1
         mul $t2, $t1, 4
         add $t1, $s0, $t2
         lw $t3 0($t1)
         mul $t1, $s3, 4
         li $t4 1
         mul $t2, $t4, 4
         add $t4, $s0, $t2
         lw $t3 0($t4)
         lw $t2 0($t3)
         li $t4 1
         slt $t5, $t1, $t2
         sub $t2, $t4, $t5
         beqz $t2 L25
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L25:     nop
         li $t2 4
         move $t4 $t2
         add $t2, $t1, $t4
         move $t1 $t2
         add $t2, $t3, $t1
         lw $t1 4($s0)
         mul $t3, $s2, 4
         lw $t1 4($s0)
         lw $t4 0($t1)
         li $t5 1
         slt $t6, $t3, $t4
         sub $t4, $t5, $t6
         beqz $t4 L26
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L26:     nop
         li $t4 4
         move $t5 $t4
         add $t4, $t3, $t5
         move $t3 $t4
         add $t4, $t1, $t3
         lw $t1 0($t4)
         sw $t1, 0($t2)
         li $t1 1
         mul $t2, $t1, 4
         add $t1, $s0, $t2
         lw $t3 0($t1)
         mul $t1, $s2, 4
         li $t4 1
         mul $t2, $t4, 4
         add $t4, $s0, $t2
         lw $t3 0($t4)
         lw $t2 0($t3)
         li $t4 1
         slt $t5, $t1, $t2
         sub $t2, $t4, $t5
         beqz $t2 L27
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L27:     nop
         li $t2 4
         move $t4 $t2
         add $t2, $t1, $t4
         move $t1 $t2
         add $t2, $t3, $t1
         sw $t0, 0($t2)
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 4($t1)
         li $t1 1
         sub $t3, $s3, $t1
         move $a0 $t0
         move $a1 $s1
         move $a2 $t3
         jalr $t2
         move $t1 $v0
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 4($t1)
         li $t1 1
         add $t3, $s3, $t1
         move $a0 $t0
         move $a1 $t3
         move $a2 $s2
         jalr $t2
         move $t1 $v0
         b L3
L2:      nop
L3:      nop
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $s3, 12($sp)
         lw $s4, 16($sp)
         lw $ra, -4($fp)
         lw $fp, 20($sp)
         addu $sp, $sp, 28
         j $ra

         .text
         .globl           QS_Print
QS_Print:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         li $t0 0
L28:nop
         lw $t1 8($s0)
         slt $t2, $t0, $t1
         beqz $t2 L29
         lw $t1 4($s0)
         mul $t2, $t0, 4
         lw $t1 4($s0)
         lw $t3 0($t1)
         li $t4 1
         slt $t5, $t2, $t3
         sub $t3, $t4, $t5
         beqz $t3 L30
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L30:     nop
         li $t3 4
         move $t4 $t3
         add $t3, $t2, $t4
         move $t2 $t3
         add $t3, $t1, $t2
         lw $t1 0($t3)
         move $a0 $t1
         jal _print
         add $t0, $t0, 1
         b L28
L29:     nop
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           QS_Init
QS_Init:
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
L31: nop
         li $t2 1
         add $t3, $s1, $t2
         li $t2 4
         move $t4 $t2
         mul $t2, $t3, $t4
         slt $t3, $t1, $t2
         beqz $t3 L32
         add $t2, $t0, $t1
         li $t3 0
         sw $t3, 0($t2)
         add $t1, $t1, 4
         b L31
L32:     nop
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
         beqz $t0 L33
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L33:     nop
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
         beqz $t0 L34
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L34:     nop
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
         beqz $t0 L35
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L35:     nop
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
         beqz $t0 L36
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L36:     nop
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
         beqz $t0 L37
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L37:     nop
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
         beqz $t0 L38
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L38:     nop
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
         beqz $t0 L39
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L39:     nop
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
         beqz $t0 L40
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L40:     nop
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
         beqz $t0 L41
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L41:     nop
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
         beqz $t0 L42
         li $v0, 4
         la $a0, str_er
         syscall
         li $v0, 10
         syscall
L42:     nop
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
