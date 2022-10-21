         .text
         .globl           main
main:
         move $fp, $sp
         subu $sp, $sp, 4
         sw $ra, -4($fp)
         li $a0 4
         jal _halloc
         move $t0 $v0
         li $a0 4
         jal _halloc
         move $t1 $v0
         la $t2 BT_Start
         sw $t2, 0($t0)
         sw $t0, 0($t1)
         move $t0 $t1
         lw $t1 0($t0)
         lw $t2 0($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $a0 $t1
         jal _print
         lw $ra, -4($fp)
         addu $sp, $sp, 4
         j $ra

         .text
         .globl           BT_Start
BT_Start:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         li $a0 80
         jal _halloc
         move $t0 $v0
         li $a0 28
         jal _halloc
         move $t1 $v0
         la $t2 Tree_RecPrint
         sw $t2, 76($t0)
         la $t2 Tree_Print
         sw $t2, 72($t0)
         la $t2 Tree_Search
         sw $t2, 68($t0)
         la $t2 Tree_RemoveLeft
         sw $t2, 64($t0)
         la $t2 Tree_RemoveRight
         sw $t2, 60($t0)
         la $t2 Tree_Remove
         sw $t2, 56($t0)
         la $t2 Tree_Delete
         sw $t2, 52($t0)
         la $t2 Tree_Insert
         sw $t2, 48($t0)
         la $t2 Tree_Compare
         sw $t2, 44($t0)
         la $t2 Tree_SetHas_Right
         sw $t2, 40($t0)
         la $t2 Tree_SetHas_Left
         sw $t2, 36($t0)
         la $t2 Tree_GetHas_Left
         sw $t2, 32($t0)
         la $t2 Tree_GetHas_Right
         sw $t2, 28($t0)
         la $t2 Tree_SetKey
         sw $t2, 24($t0)
         la $t2 Tree_GetKey
         sw $t2, 20($t0)
         la $t2 Tree_GetLeft
         sw $t2, 16($t0)
         la $t2 Tree_GetRight
         sw $t2, 12($t0)
         la $t2 Tree_SetLeft
         sw $t2, 8($t0)
         la $t2 Tree_SetRight
         sw $t2, 4($t0)
         la $t2 Tree_Init
         sw $t2, 0($t0)
         li $t2 4
L2:nop
         li $t3 28
         slt $t4, $t2, $t3
         beqz $t4 L3
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L2
L3:      nop
         sw $t0, 0($t1)
         move $s1 $t1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 0($t1)
         li $t1 16
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 72($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         li $t0 100000000
         move $a0 $t0
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 8
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 72($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 24
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 4
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 12
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 20
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 28
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 48($t1)
         li $t1 14
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 72($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 68($t1)
         li $t1 24
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 68($t1)
         li $t1 12
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 68($t1)
         li $t1 16
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 68($t1)
         li $t1 50
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 68($t1)
         li $t1 12
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 52($t1)
         li $t1 12
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 72($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 68($t1)
         li $t1 12
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $a0 $t3
         jal _print
         li $t0 0
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_Init
Tree_Init:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 12($s0)
         li $t0 0
         sw $t0, 16($s0)
         li $t0 0
         sw $t0, 20($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_SetRight
Tree_SetRight:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 8($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_SetLeft
Tree_SetLeft:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 4($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_GetRight
Tree_GetRight:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         lw $t0 8($s0)
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           Tree_GetLeft
Tree_GetLeft:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         lw $t0 4($s0)
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           Tree_GetKey
Tree_GetKey:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         lw $t0 12($s0)
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           Tree_SetKey
Tree_SetKey:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 12($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_GetHas_Right
Tree_GetHas_Right:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         lw $t0 20($s0)
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           Tree_GetHas_Left
Tree_GetHas_Left:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         lw $t0 16($s0)
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           Tree_SetHas_Left
Tree_SetHas_Left:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 16($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_SetHas_Right
Tree_SetHas_Right:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 16
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         move $s0 $a0
         move $s1 $a1
         sw $s1, 20($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $ra, -4($fp)
         lw $fp, 8($sp)
         addu $sp, $sp, 16
         j $ra

         .text
         .globl           Tree_Compare
Tree_Compare:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 20
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $a2
         li $t1 0
         add $t0, $s2, 1
         slt $t1, $s1, $s2
         beqz $t1 L4
         li $t1 0
         b L5
L4:      nop
         li $t2 1
         slt $t3, $s1, $t0
         sub $t0, $t2, $t3
         beqz $t0 L6
         li $t1 0
         b L7
L6:      nop
         li $t1 1
L7:      nop
L5:      nop
         move $v0 $t1
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $ra, -4($fp)
         lw $fp, 12($sp)
         addu $sp, $sp, 20
         j $ra

         .text
         .globl           Tree_Insert
Tree_Insert:
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
         li $a0 80
         jal _halloc
         move $t0 $v0
         li $a0 28
         jal _halloc
         move $t1 $v0
         la $t2 Tree_RecPrint
         sw $t2, 76($t0)
         la $t2 Tree_Print
         sw $t2, 72($t0)
         la $t2 Tree_Search
         sw $t2, 68($t0)
         la $t2 Tree_RemoveLeft
         sw $t2, 64($t0)
         la $t2 Tree_RemoveRight
         sw $t2, 60($t0)
         la $t2 Tree_Remove
         sw $t2, 56($t0)
         la $t2 Tree_Delete
         sw $t2, 52($t0)
         la $t2 Tree_Insert
         sw $t2, 48($t0)
         la $t2 Tree_Compare
         sw $t2, 44($t0)
         la $t2 Tree_SetHas_Right
         sw $t2, 40($t0)
         la $t2 Tree_SetHas_Left
         sw $t2, 36($t0)
         la $t2 Tree_GetHas_Left
         sw $t2, 32($t0)
         la $t2 Tree_GetHas_Right
         sw $t2, 28($t0)
         la $t2 Tree_SetKey
         sw $t2, 24($t0)
         la $t2 Tree_GetKey
         sw $t2, 20($t0)
         la $t2 Tree_GetLeft
         sw $t2, 16($t0)
         la $t2 Tree_GetRight
         sw $t2, 12($t0)
         la $t2 Tree_SetLeft
         sw $t2, 8($t0)
         la $t2 Tree_SetRight
         sw $t2, 4($t0)
         la $t2 Tree_Init
         sw $t2, 0($t0)
         li $t2 4
L8:nop
         li $t3 28
         slt $t4, $t2, $t3
         beqz $t4 L9
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L8
L9:      nop
         sw $t0, 0($t1)
         move $s2 $t1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 0($t1)
         move $a0 $t0
         move $a1 $s1
         jalr $t2
         move $t1 $v0
         move $s3 $s0
         li $s4 1
L10:      nop
         beqz $s4 L11
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $t1
         slt $t1, $s1, $t0
         beqz $t1 L12
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L14
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s3 $t1
         b L15
L14:     nop
         li $s4 0
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 36($t1)
         li $t1 1
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 8($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t2
         move $t1 $v0
L15:     nop
         b L13
L12:     nop
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L16
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s3 $t1
         b L17
L16:     nop
         li $s4 0
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 40($t1)
         li $t1 1
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s3
         lw $t1 0($t0)
         lw $t2 4($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t2
         move $t1 $v0
L17:     nop
L13:     nop
         b L10
L11:     nop
         li $t0 1
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
         .globl           Tree_Delete
Tree_Delete:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 48
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         sw $s3, 12($sp)
         sw $s4, 16($sp)
         sw $s6, 24($sp)
         sw $s7, 28($sp)
         sw $s5, 32($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $s0
         move $s3 $s0
         li $s4 1
         li $v1 0
         sw $v1, 20($sp)
         li $s6 1
L18:nop
         beqz $s4 L19
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s7 $t1
         slt $t0, $s1, $s7
         beqz $t0 L20
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L22
         move $s3 $s2
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s2 $t1
         b L23
L22:     nop
         li $s4 0
L23:     nop
         b L21
L20:     nop
         slt $t0, $s7, $s1
         beqz $t0 L24
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L26
         move $s3 $s2
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s2 $t1
         b L27
L26:     nop
         li $s4 0
L27:     nop
         b L25
L24:     nop
         beqz $s6 L28
         li $s7 0
         li $s5 1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         sub $t0, $s5, $t1
         beqz $t0 L32
         li $s5 1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         sub $t0, $s5, $t1
         beqz $t0 L32
         li $s7 1
L32:     nop
         beqz $s7 L30
         b L31
L30:     nop
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 56($t1)
         move $a0 $t0
         move $a1 $s3
         move $a2 $s2
         jalr $t2
         move $t1 $v0
L31:     nop
         b L29
L28:     nop
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 56($t1)
         move $a0 $t0
         move $a1 $s3
         move $a2 $s2
         jalr $t2
         move $t1 $v0
L29:     nop
         lw $v1, 20($sp)
         li $v1 1
         sw $v1, 36($sp)
         li $s4 0
L25:     nop
L21:     nop
         li $s6 0
         b L18
L19:     nop
         lw $v1, 36($sp)
         move $v0 $v1
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $s3, 12($sp)
         lw $s4, 16($sp)
         lw $s5, 32($sp)
         lw $s6, 24($sp)
         lw $s7, 28($sp)
         lw $ra, -4($fp)
         lw $fp, 40($sp)
         addu $sp, $sp, 48
         j $ra

         .text
         .globl           Tree_Remove
Tree_Remove:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 24
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         sw $s3, 12($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $a2
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L33
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 64($t1)
         move $a0 $t0
         move $a1 $s1
         move $a2 $s2
         jalr $t2
         move $t1 $v0
         b L34
L33:     nop
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L35
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 60($t1)
         move $a0 $t0
         move $a1 $s1
         move $a2 $s2
         jalr $t2
         move $t1 $v0
         b L36
L35:     nop
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s3 $t1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $t1
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $t1
         move $t1 $s0
         lw $t2 0($t1)
         lw $t3 44($t2)
         move $a0 $t1
         move $a1 $s3
         move $a2 $t0
         jalr $t3
         move $t2 $v0
         beqz $t2 L37
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 8($t1)
         lw $t1 24($s0)
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 36($t1)
         li $t1 0
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         b L38
L37:     nop
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 4($t1)
         lw $t1 24($s0)
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 40($t1)
         li $t1 0
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
L38:     nop
L36:     nop
L34:     nop
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $s3, 12($sp)
         lw $ra, -4($fp)
         lw $fp, 16($sp)
         addu $sp, $sp, 24
         j $ra

         .text
         .globl           Tree_RemoveRight
Tree_RemoveRight:
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
L39:nop
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L40
         move $s3 $s2
         lw $t0 0($s3)
         lw $s4 24($t0)
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $t1
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $a0 $s3
         move $a1 $t1
         jalr $s4
         move $t0 $v0
         move $s1 $s2
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s2 $t1
         b L39
L40:     nop
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 4($t1)
         lw $t1 24($s0)
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 40($t1)
         li $t1 0
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         li $t0 1
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
         .globl           Tree_RemoveLeft
Tree_RemoveLeft:
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
L41:nop
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L42
         move $s3 $s2
         lw $t0 0($s3)
         lw $s4 24($t0)
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $t0 $t1
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $a0 $s3
         move $a1 $t1
         jalr $s4
         move $t0 $v0
         move $s1 $s2
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s2 $t1
         b L41
L42:     nop
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 8($t1)
         lw $t1 24($s0)
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 36($t1)
         li $t1 0
         move $a0 $t0
         move $a1 $t1
         jalr $t2
         move $t3 $v0
         li $t0 1
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
         .globl           Tree_Search
Tree_Search:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 32
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         sw $s3, 12($sp)
         sw $s4, 16($sp)
         sw $s5, 20($sp)
         move $s0 $a0
         move $s1 $a1
         move $s2 $s0
         li $s3 1
         li $s4 0
L43:nop
         beqz $s3 L44
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s5 $t1
         slt $t0, $s1, $s5
         beqz $t0 L45
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L47
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s2 $t1
         b L48
L47:     nop
         li $s3 0
L48:     nop
         b L46
L45:     nop
         slt $t0, $s5, $s1
         beqz $t0 L49
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L51
         move $t0 $s2
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $s2 $t1
         b L52
L51:     nop
         li $s3 0
L52:     nop
         b L50
L49:     nop
         li $s4 1
         li $s3 0
L50:     nop
L46:     nop
         b L43
L44:     nop
         move $v0 $s4
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $s3, 12($sp)
         lw $s4, 16($sp)
         lw $s5, 20($sp)
         lw $ra, -4($fp)
         lw $fp, 24($sp)
         addu $sp, $sp, 32
         j $ra

         .text
         .globl           Tree_Print
Tree_Print:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         move $t0 $s0
         move $t1 $s0
         lw $t2 0($t1)
         lw $t3 76($t2)
         move $a0 $t1
         move $a1 $t0
         jalr $t3
         move $t2 $v0
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           Tree_RecPrint
Tree_RecPrint:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 24
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         sw $s3, 12($sp)
         move $s0 $a0
         move $s1 $a1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 32($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L53
         move $s2 $s0
         lw $t0 0($s2)
         lw $s3 76($t0)
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 16($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $a0 $s2
         move $a1 $t1
         jalr $s3
         move $t0 $v0
         b L54
L53:     nop
L54:     nop
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 20($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $a0 $t1
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 28($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         beqz $t1 L55
         move $s2 $s0
         lw $t0 0($s2)
         lw $s3 76($t0)
         move $t0 $s1
         lw $t1 0($t0)
         lw $t2 12($t1)
         move $a0 $t0
         jalr $t2
         move $t1 $v0
         move $a0 $s2
         move $a1 $t1
         jalr $s3
         move $t0 $v0
         b L56
L55:     nop
L56:     nop
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $s3, 12($sp)
         lw $ra, -4($fp)
         lw $fp, 16($sp)
         addu $sp, $sp, 24
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
