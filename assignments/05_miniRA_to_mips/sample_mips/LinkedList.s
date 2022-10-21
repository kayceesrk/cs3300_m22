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
         la $t2 LL_Start
         sw $t2, 0($t0)
         sw $t0, 0($t1)
         move $t0 $t1
         lw $t1 0($t0)
         lw $t1 0($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $a0 $t0
         jal _print
         lw $ra, -4($fp)
         addu $sp, $sp, 4
         j $ra

         .text
         .globl           Element_Init
Element_Init:
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
         move $s3 $a3
         sw $s1, 4($s0)
         sw $s2, 8($s0)
         sw $s3, 12($s0)
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
         .globl           Element_GetAge
Element_GetAge:
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
         .globl           Element_GetSalary
Element_GetSalary:
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
         .globl           Element_GetMarried
Element_GetMarried:
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
         .globl           Element_Equal
Element_Equal:
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
         li $s2 1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 4($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $t0 $t0
         li $s3 1
         move $t1 $s0
         lw $t2 0($t1)
         lw $t2 20($t2)
         lw $t3 4($s0)
         move $a0 $t1
         move $a1 $t0
         move $a2 $t3
         jalr $t2
         move $t0 $v0
         sub $t0, $s3, $t0
         beqz $t0 L2
         li $s2 0
         b L3
L2:      nop
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 8($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $t0 $t0
         li $s3 1
         move $t1 $s0
         lw $t2 0($t1)
         lw $t2 20($t2)
         lw $t3 8($s0)
         move $a0 $t1
         move $a1 $t0
         move $a2 $t3
         jalr $t2
         move $t0 $v0
         sub $t0, $s3, $t0
         beqz $t0 L4
         li $s2 0
         b L5
L4:      nop
         lw $t0 12($s0)
         beqz $t0 L6
         li $s3 1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 12($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         sub $t0, $s3, $t0
         beqz $t0 L8
         li $s2 0
         b L9
L8:      nop
         li $v0 0
L9:      nop
         b L7
L6:      nop
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 12($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         beqz $t0 L10
         li $s2 0
         b L11
L10:     nop
         li $v0 0
L11:     nop
L7:     nop
L5:     nop
L3:     nop
         move $v0 $s2
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $s3, 12($sp)
         lw $ra, -4($fp)
         lw $fp, 16($sp)
         addu $sp, $sp, 24
         j $ra

         .text
         .globl           Element_Compare
Element_Compare:
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
         beqz $t1 L12
         li $t1 0
         b L13
L12:     nop
         li $t2 1
         slt $t0, $s1, $t0
         sub $t0, $t2, $t0
         beqz $t0 L14
         li $t1 0
         b L15
L14:     nop
         li $t1 1
L15:     nop
L13:     nop
         move $v0 $t1
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $ra, -4($fp)
         lw $fp, 12($sp)
         addu $sp, $sp, 20
         j $ra

         .text
         .globl           List_Init
List_Init:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 12
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         move $s0 $a0
         li $t0 1
         sw $t0, 12($s0)
         li $t0 1
         move $v0 $t0
         lw $s0, 0($sp)
         lw $ra, -4($fp)
         lw $fp, 4($sp)
         addu $sp, $sp, 12
         j $ra

         .text
         .globl           List_InitNew
List_InitNew:
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
         move $s3 $a3
         sw $s3, 12($s0)
         sw $s1, 4($s0)
         sw $s2, 8($s0)
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
         .globl           List_Insert
List_Insert:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 20
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         move $s0 $a0
         move $s1 $a1
         move $t0 $s0
         li $a0 40
         jal _halloc
         move $t1 $v0
         li $a0 16
         jal _halloc
         move $t2 $v0
         la $t3 List_Print
         sw $t3, 36($t1)
         la $t3 List_GetNext
         sw $t3, 32($t1)
         la $t3 List_GetElem
         sw $t3, 28($t1)
         la $t3 List_GetEnd
         sw $t3, 24($t1)
         la $t3 List_Search
         sw $t3, 20($t1)
         la $t3 List_Delete
         sw $t3, 16($t1)
         la $t3 List_SetNext
         sw $t3, 12($t1)
         la $t3 List_Insert
         sw $t3, 8($t1)
         la $t3 List_InitNew
         sw $t3, 4($t1)
         la $t3 List_Init
         sw $t3, 0($t1)
         li $t3 4
L16:nop
         li $t4 16
         slt $t4, $t3, $t4
         beqz $t4 L17
         add $t4, $t2, $t3
         li $t5 0
         sw $t5, 0($t4)
         add $t3, $t3, 4
         b L16
L17:     nop
         sw $t1, 0($t2)
         move $s2 $t2
         move $t1 $s2
         lw $t2 0($t1)
         lw $t2 4($t2)
         li $t3 0
         move $a0 $t1
         move $a1 $s1
         move $a2 $t0
         move $a3 $t3
         jalr $t2
         move $t0 $v0
         move $v0 $t0
         move $v0 $s2
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $ra, -4($fp)
         lw $fp, 12($sp)
         addu $sp, $sp, 20
         j $ra

         .text
         .globl           List_SetNext
List_SetNext:
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
         .globl           List_Delete
List_Delete:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 52
         sw $ra, -4($fp)
         sw $s0, 12($sp)
         sw $s1, 16($sp)
         sw $s2, 20($sp)
         sw $s3, 24($sp)
         sw $s4, 28($sp)
         sw $s5, 32($sp)
         sw $s6, 36($sp)
         sw $s7, 40($sp)
         move $s0 $a0
         move $s1 $a1
         move $v0 $s0
         sw $v0, 0($sp)
         li $s3 0
         li $t0 0
         sub $s4, $t0, 1
         move $s5 $s0
         move $s6 $s0
         lw $t0 12($s0)
         move $v0 $t0
         sw $v0, 8($sp)
         lw $t0 4($s0)
         move $v0 $t0
         sw $v0, 4($sp)
L18:nop
         li $t0 0
         li $t1 1
         lw $v1, 8($sp)
         sub $t1, $t1, $v1
         beqz $t1 L20
         li $t1 1
         sub $t1, $t1, $s3
         beqz $t1 L20
         li $t0 1
L20:     nop
         beqz $t0 L19
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 16($t1)
         move $a0 $t0
         lw $a1, 4($sp)
         jalr $t1
         move $t0 $v0
         beqz $t0 L21
         li $s3 1
         li $t0 0
         slt $t0, $s4, $t0
         beqz $t0 L23
         move $t0 $s5
         lw $t1 0($t0)
         lw $t1 32($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         sw $v0, 0($sp)
         b L24
L23:     nop
         li $t0 0
         li $t1 555
         sub $t0, $t0, $t1
         move $a0 $t0
         jal _print
         move $s2 $s6
         lw $t0 0($s2)
         lw $s7 12($t0)
         move $t0 $s5
         lw $t1 0($t0)
         lw $t1 32($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $a0 $s2
         move $a1 $t0
         jalr $s7
         move $t0 $v0
         move $v0 $t0
         li $t0 0
         li $t1 555
         sub $t0, $t0, $t1
         move $a0 $t0
         jal _print
L24:     nop
         b L22
L21:     nop
         li $v0 0
L22:     nop
         li $t0 1
         sub $t0, $t0, $s3
         beqz $t0 L25
         move $s6 $s5
         move $t0 $s5
         lw $t1 0($t0)
         lw $t1 32($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s5 $t0
         move $t0 $s5
         lw $t1 0($t0)
         lw $t1 24($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         sw $v0, 8($sp)
         move $t0 $s5
         lw $t1 0($t0)
         lw $t1 28($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         sw $v0, 4($sp)
         li $s4 1
         b L26
L25:     nop
         li $v0 0
L26:     nop
         b L18
L19:     nop
         lw $v1, 0($sp)
         move $v0 $v1
         lw $s0, 12($sp)
         lw $s1, 16($sp)
         lw $s2, 20($sp)
         lw $s3, 24($sp)
         lw $s4, 28($sp)
         lw $s5, 32($sp)
         lw $s6, 36($sp)
         lw $s7, 40($sp)
         lw $ra, -4($fp)
         lw $fp, 44($sp)
         addu $sp, $sp, 52
         j $ra

         .text
         .globl           List_Search
List_Search:
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
         li $s2 0
         move $s3 $s0
         lw $t0 12($s0)
         move $s4 $t0
         lw $t0 4($s0)
         move $s5 $t0
L27:nop
         li $t0 1
         sub $t0, $t0, $s4
         beqz $t0 L28
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 16($t1)
         move $a0 $t0
         move $a1 $s5
         jalr $t1
         move $t0 $v0
         beqz $t0 L29
         li $s2 1
         b L30
L29:     nop
         li $v0 0
L30:     nop
         move $t0 $s3
         lw $t1 0($t0)
         lw $t1 32($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s3 $t0
         move $t0 $s3
         lw $t1 0($t0)
         lw $t1 24($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s4 $t0
         move $t0 $s3
         lw $t1 0($t0)
         lw $t1 28($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s5 $t0
         b L27
L28:     nop
         move $v0 $s2
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
         .globl           List_GetEnd
List_GetEnd:
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
         .globl           List_GetElem
List_GetElem:
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
         .globl           List_GetNext
List_GetNext:
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
         .globl           List_Print
List_Print:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 24
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         sw $s3, 12($sp)
         move $s0 $a0
         move $s1 $s0
         lw $t0 12($s0)
         move $s2 $t0
         lw $t0 4($s0)
         move $s3 $t0
L31:nop
         li $t0 1
         sub $t0, $t0, $s2
         beqz $t0 L32
         move $t0 $s3
         lw $t1 0($t0)
         lw $t1 4($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $a0 $t0
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 32($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 24($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s2 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 28($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $s3 $t0
         b L31
L32:     nop
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
         .globl           LL_Start
LL_Start:
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
         li $a0 40
         jal _halloc
         move $t0 $v0
         li $a0 16
         jal _halloc
         move $t1 $v0
         la $t2 List_Print
         sw $t2, 36($t0)
         la $t2 List_GetNext
         sw $t2, 32($t0)
         la $t2 List_GetElem
         sw $t2, 28($t0)
         la $t2 List_GetEnd
         sw $t2, 24($t0)
         la $t2 List_Search
         sw $t2, 20($t0)
         la $t2 List_Delete
         sw $t2, 16($t0)
         la $t2 List_SetNext
         sw $t2, 12($t0)
         la $t2 List_Insert
         sw $t2, 8($t0)
         la $t2 List_InitNew
         sw $t2, 4($t0)
         la $t2 List_Init
         sw $t2, 0($t0)
         li $t2 4
L33:nop
         li $t3 16
         slt $t3, $t2, $t3
         beqz $t3 L34
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L33
L34:     nop
         sw $t0, 0($t1)
         move $s1 $t1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 0($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $s1 $s1
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 0($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $a0 24
         jal _halloc
         move $t0 $v0
         li $a0 16
         jal _halloc
         move $t1 $v0
         la $t2 Element_Compare
         sw $t2, 20($t0)
         la $t2 Element_Equal
         sw $t2, 16($t0)
         la $t2 Element_GetMarried
         sw $t2, 12($t0)
         la $t2 Element_GetSalary
         sw $t2, 8($t0)
         la $t2 Element_GetAge
         sw $t2, 4($t0)
         la $t2 Element_Init
         sw $t2, 0($t0)
         li $t2 4
L35:nop
         li $t3 16
         slt $t3, $t2, $t3
         beqz $t3 L36
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L35
L36:     nop
         sw $t0, 0($t1)
         move $s2 $t1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t1 0($t1)
         li $t2 25
         li $t3 37000
         li $t4 0
         move $a0 $t0
         move $a1 $t2
         move $a2 $t3
         move $a3 $t4
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 8($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $t0 10000000
         move $a0 $t0
         jal _print
         li $a0 24
         jal _halloc
         move $t0 $v0
         li $a0 16
         jal _halloc
         move $t1 $v0
         la $t2 Element_Compare
         sw $t2, 20($t0)
         la $t2 Element_Equal
         sw $t2, 16($t0)
         la $t2 Element_GetMarried
         sw $t2, 12($t0)
         la $t2 Element_GetSalary
         sw $t2, 8($t0)
         la $t2 Element_GetAge
         sw $t2, 4($t0)
         la $t2 Element_Init
         sw $t2, 0($t0)
         li $t2 4
L37:nop
         li $t3 16
         slt $t3, $t2, $t3
         beqz $t3 L38
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L37
L38:     nop
         sw $t0, 0($t1)
         move $s2 $t1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t1 0($t1)
         li $t2 39
         li $t3 42000
         li $t4 1
         move $a0 $t0
         move $a1 $t2
         move $a2 $t3
         move $a3 $t4
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $s3 $s2
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 8($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $t0 10000000
         move $a0 $t0
         jal _print
         li $a0 24
         jal _halloc
         move $t0 $v0
         li $a0 16
         jal _halloc
         move $t1 $v0
         la $t2 Element_Compare
         sw $t2, 20($t0)
         la $t2 Element_Equal
         sw $t2, 16($t0)
         la $t2 Element_GetMarried
         sw $t2, 12($t0)
         la $t2 Element_GetSalary
         sw $t2, 8($t0)
         la $t2 Element_GetAge
         sw $t2, 4($t0)
         la $t2 Element_Init
         sw $t2, 0($t0)
         li $t2 4
L39:nop
         li $t3 16
         slt $t3, $t2, $t3
         beqz $t3 L40
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L39
L40:     nop
         sw $t0, 0($t1)
         move $s2 $t1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t1 0($t1)
         li $t2 22
         li $t3 34000
         li $t4 0
         move $a0 $t0
         move $a1 $t2
         move $a2 $t3
         move $a3 $t4
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 8($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $a0 24
         jal _halloc
         move $t0 $v0
         li $a0 16
         jal _halloc
         move $t1 $v0
         la $t2 Element_Compare
         sw $t2, 20($t0)
         la $t2 Element_Equal
         sw $t2, 16($t0)
         la $t2 Element_GetMarried
         sw $t2, 12($t0)
         la $t2 Element_GetSalary
         sw $t2, 8($t0)
         la $t2 Element_GetAge
         sw $t2, 4($t0)
         la $t2 Element_Init
         sw $t2, 0($t0)
         li $t2 4
L41:nop
         li $t3 16
         slt $t3, $t2, $t3
         beqz $t3 L42
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L41
L42:     nop
         sw $t0, 0($t1)
         move $s4 $t1
         move $t0 $s4
         lw $t1 0($t0)
         lw $t1 0($t1)
         li $t2 27
         li $t3 34000
         li $t4 0
         move $a0 $t0
         move $a1 $t2
         move $a2 $t3
         move $a3 $t4
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 20($t1)
         move $a0 $t0
         move $a1 $s3
         jalr $t1
         move $t0 $v0
         move $a0 $t0
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 20($t1)
         move $a0 $t0
         move $a1 $s4
         jalr $t1
         move $t0 $v0
         move $a0 $t0
         jal _print
         li $t0 10000000
         move $a0 $t0
         jal _print
         li $a0 24
         jal _halloc
         move $t0 $v0
         li $a0 16
         jal _halloc
         move $t1 $v0
         la $t2 Element_Compare
         sw $t2, 20($t0)
         la $t2 Element_Equal
         sw $t2, 16($t0)
         la $t2 Element_GetMarried
         sw $t2, 12($t0)
         la $t2 Element_GetSalary
         sw $t2, 8($t0)
         la $t2 Element_GetAge
         sw $t2, 4($t0)
         la $t2 Element_Init
         sw $t2, 0($t0)
         li $t2 4
L43:nop
         li $t3 16
         slt $t3, $t2, $t3
         beqz $t3 L44
         add $t3, $t1, $t2
         li $t4 0
         sw $t4, 0($t3)
         add $t2, $t2, 4
         b L43
L44:     nop
         sw $t0, 0($t1)
         move $s2 $t1
         move $t0 $s2
         lw $t1 0($t0)
         lw $t1 0($t1)
         li $t2 28
         li $t3 35000
         li $t4 0
         move $a0 $t0
         move $a1 $t2
         move $a2 $t3
         move $a3 $t4
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 8($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $t0 2220000
         move $a0 $t0
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 16($t1)
         move $a0 $t0
         move $a1 $s3
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $t0 33300000
         move $a0 $t0
         jal _print
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 16($t1)
         move $a0 $t0
         move $a1 $s2
         jalr $t1
         move $t0 $v0
         move $s1 $t0
         move $t0 $s1
         lw $t1 0($t0)
         lw $t1 36($t1)
         move $a0 $t0
         jalr $t1
         move $t0 $v0
         move $v0 $t0
         li $t0 44440000
         move $a0 $t0
         jal _print
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
