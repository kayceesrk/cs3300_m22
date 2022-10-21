# MIPS Assembly

## MIPS SPECIFICATION

[ Taken from Yannis Smaragdakis] The MIPS registers of interest together with the conventions of their uses are:

- $0 : Is always set to 0
- $t0 - $t9 : Are not persisted after call
- $s0 - $s7 : Are persisted after call
- $v0 : Used for the return value
- $v1 : Use it conventionally for copying to and from the stack
- $a0 - $a3 : Used to pass arguments
- $sp : Pointer to the top of the stack
- $ra : Return address

### Some examples from MIPS code:

To insert the value from $t0 to the top of the stack:
```
sw $t0, 0($sp)    			
add $sp, $sp, -4
```

To add $t0, $t1 and produce the result in $t2:
```
add $t2, $t0, $t1			
```

To multiply $t0, $t1 and produce the result in $t2:
```
mult $t0, $t1
mflo $t2
```

To move from one point of the stack to another (x = y where variable x has been assigned during register allocation to the 3rd position from the top of the stack, and y has been assigned the 6th position, counting backwards) under our convention for v1:
```
lw $v1, -24($sp)
sw $v1, -12($sp)
```

To do a function call:
```
jal foo
```

To return from a function call:
```
jr $ra
```

To save a long integer (>32768) to $t0, you do:
```
li $t0, 1000000
```

The "MOVE t2 Fac_ComputeFac" of miniRA would then become:
```
la $t2, Fac_ComputeFac
```

To translate the miniRA "CALL t0 " you will use the pseudo-instruction jalr:
```
jalr $t0
```

You can figure out the rest for yourselves. A very good reference is [here](https://www.cse.iitm.ac.in/~krishna/cs3300/spim_ref.html#instructions). A difference from the standard MIPS conventions of register usage is that you can use $v1 for transfers from the stack. Before a function call you should save all (live) $t0-$t9 variables as well as $ra to the stack. On the above site you will find some MIPS pseudo-instructions that will be translated into simpler binary code by the assembler. You can use these pseudo-instructions freely.

You can execute your MIPS code in SPIM. SPIM is a MIPS emulator that offers some very simple system calls. You will need calls for memory allocation, integer printing and character printing.



To do a memory allocation of 40 bytes and get the address of the allocated memory in $v0:
```
add $a0, $0, 40
add $v0, $0, 9
syscall
```	

To call the function that prints an integer from $t4:
```
move $a0, $t4
add $v0, $0, 1
syscall
```
			

The following is an example of MIPS code that runs on SPIM. Given [this](https://www.cse.iitm.ac.in/~krishna/cs3300/mips-example/print.c) C program, a possible translation to MIPS code is [here](https://www.cse.iitm.ac.in/~krishna/cs3300/mips-example/print-mips.s). The same code with "dynamic" calls is [here](https://www.cse.iitm.ac.in/~krishna/cs3300/mips-example/print-mips-dyn.s). The print_int and print_char functions are identical to those offered by SPIM through syscall. (The C program is given in this form to make its translation more understandable.)

Details about the MIPS assembly can be found at [spim homepage](https://pages.cs.wisc.edu/~larus/spim.html).

SPIM Quick reference can be found [here](https://www.cse.iitm.ac.in/~krishna/cs3300/spim_ref.html).

Quick details about MIPS integer instruction set can be [here](https://user.eng.umd.edu/~manoj/759M/MIPSALM.html).

A Java based MIPS simulator can be found [here](http://courses.missouristate.edu/KenVollmar/MARS/download.htm).

You can build a command-line version of old SPIM using the instructions [here](https://www.cse.iitm.ac.in/~krishna/cs3300/spim-build.txt).