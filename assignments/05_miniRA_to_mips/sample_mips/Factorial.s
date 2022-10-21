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
         la $t2 Fac_ComputeFac
         sw $t2, 0($t0)
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
         .globl           Fac_ComputeFac
Fac_ComputeFac:
         sw $fp, -8($sp)
         move $fp, $sp
         subu $sp, $sp, 20
         sw $ra, -4($fp)
         sw $s0, 0($sp)
         sw $s1, 4($sp)
         sw $s2, 8($sp)
         move $s0 $a0
         move $s1 $a1
         li $t0 1
         slt $t1, $s1, $t0
         beqz $t1 L2
         li $s2 1
         b L3
L2:      nop
         move $t0 $s0
         lw $t1 0($t0)
         lw $t2 0($t1)
         li $t1 1
         sub $t3, $s1, $t1
         move $a0 $t0
         move $a1 $t3
         jalr $t2
         move $t1 $v0
         mul $t0, $s1, $t1
         move $s2 $t0
L3:      nop
         move $v0 $s2
         lw $s0, 0($sp)
         lw $s1, 4($sp)
         lw $s2, 8($sp)
         lw $ra, -4($fp)
         lw $fp, 12($sp)
         addu $sp, $sp, 20
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
