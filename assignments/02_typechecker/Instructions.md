ASSIGNMENT 2
*****************************************************************************************************************************************
Java Type Checker
Release Date - 30/08/2021
Deadline       - 19/09/2021, 23:59 hours
*****************************************************************************************************************************************
This assignment is the first part of a multi part project to write an optimizing compiler for Minijava. We start with the LL(k) grammar for minijava and follow simplification and optimization phases, similar to what is seen in a standard optimizing compiler. In this assignment, we will implement a type checker for the minijava compiler.

Use JTB and JavaCC and write in Java one or more visitors which type check a MiniJava program. Your main file should be called P1.java, and if A.java contains a program to be type checked, then

   $ javac  P1.java
   $ java  P1 < A.java

should print either "Program type checked successfully" or "Type error". Note, your program must take input from standard input and write to standard output (so that we can use redirection).

Rename the folder RollN0_P1 with your roll number.