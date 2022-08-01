---
layout: page
title: Lab 02 - Flex
permalink: /labs/02_bison
---

In this lab, we will be using
[Bison](https://www.gnu.org/software/bison/manual/bison.html), which is a parser
generator. Bison is a general-purpose parser generator that converts a grammar
description (Bison Grammar Files) for an LALR(1) context-free grammar into a C
program to parse that grammar. The Bison parser is a bottom-up parser. It tries,
by shifts and reductions, to reduce the entire input down to a single grouping
whose symbol is the grammar's start-symbol.

The slides and demo files are available in the [Github repo](https://github.com/kayceesrk/cs3300_m22/tree/main/labs/02_bison).

# Mini-assignments

Extend the demo files in the Github repo to handle `-`, `*` and `/` operators
taking into account precedence and associativity. FYI

* **demo1:** Accepts valid arithmetic expressions in infix notation and rejects
  invalid ones.
* **demo2:** Converts infix to postfix expressions.
* **demo3:** Computes the value of the arithmetic expressions. Includes single
  character variables. 

## References

* Bison manual: [https://www.gnu.org/software/bison/manual/bison.html](https://www.gnu.org/software/bison/manual/bison.html)
* "Flex & Bison", by John Levine (O’Reilly, 2009), Chapter 3, [pdf](https://web.iitd.ac.in/~sumeet/flex__bison.pdf)
