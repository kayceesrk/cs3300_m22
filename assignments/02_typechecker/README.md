---
layout: page
title: Assignment 02 - Type Checker
permalink: /assignments/typechecker
---

| Release Date | 23/08/2021 |
| Deadline     | 11/09/2021, 23:59 hours |

<br/>

This assignment is the first part of a multi part project to write an optimizing
compiler for Minijava. We start with the LL(k) grammar for minijava and follow
simplification and optimization phases, similar to what is seen in a standard
optimizing compiler. In this assignment, we will implement a type checker for
the minijava compiler.

Use JTB and JavaCC and write in Java one or more visitors which type check a
MiniJava program. Your main file should be called `P1.java`, and if `A.java`
contains a program to be type checked, then

```bash
$ javac P1.java
$ java P1 < A.java
```

should print either "Program type checked successfully" or "Type error". Note,
your program must take input from standard input and write to standard output
(so that we can use redirection).

Note: Please do not alter the directory structure of `RollN0_P1`. Only edit `GJDepthFirst.java` and `P1.java`
## Resources

The source files are on
[Github](https://github.com/kayceesrk/cs3300_m22/tree/main/assignments/02_typechecker).

Get the source by cloning the entire repo:

```bash
$ git clone https://github.com/kayceesrk/cs3300_m22
```

If you have already cloned the repo, you can get the latest updates by:

```bash
$ cd cs3300_m22 # go to the cloned repo
$ git pull
```

The MiniJava grammar specification is
[here](https://www.cse.iitm.ac.in/~krishna/cs3300/minijava-spec.html).

The type checking rules for MiniJava is
[here](/cs3300_m22/assets/miniJava-typesystem.pdf).

## Submission

Rename the folder `RollN0_P1` with your roll number. For example, if your roll
number is `cs99b999`, then the folder should be named `cs99b999_P1`. Remove all
the `.class` files before submission. For example, you can do:

```bash
$ cd cs99b999_P1
$ find . -name "*.class" | xargs rm
```

Then produce the compressed gzip archive as follows:

```bash
$ tar cvzf cs99b999_P1.tar.gz cs99b999_P1
```

Submit the `.tar.gz` file. 

Note: You should thoroughly test your code. Some sample mini java programs are provided for testing. Create positive and negative tests per feature and test your code before submission. Please ensure that there are no compilation errors. If there are compilation errors, that code will yield zero marks.
