---
layout: page
title: Lab 01 - Flex
permalink: /labs/01_flex
---

In the first assignment, we will be using
[Flex](https://www.cs.virginia.edu/~cr4bd/flex-manual/), which is a tool for
generating lexical analyzers.

The slides and demo files are available in the [Github repo](https://github.com/kayceesrk/cs3300_m22/tree/main/labs/01_flex).

# Mini-assignments

## Exercise 1

Write a lex program named `exercise1.l` that will convert:

1. Tab characters to 4 spaces
2. Remove trailing white spaces (both spaces and tabs)

Assume that the final program is `exercise1.c`. Now consider the program
[`test.c`](test.c). This program has both tabs as well as trailing
spaces. You should be able to do:

```bash
$ ./exercise1.exe < test.c > test_spaces_removed.c
```

which produces `test_spcaes_removed.c` which replaces tabs with spaces and
removes trailing white spaces with everything else being the same as `test.c`. 

## Exercise 2

C programming language is quite relaxed when it comes to syntax for numbers.
Consider the program [`test2.c`](test2.c).  

```c
int main () {
  /* Integers */
  int i1 = 000023;
  int i2 = +0023;
  int i3 = -23;
  int i4 = +23;

  /* Decimal */
  float d1 = 1.;
  float d2 = .5;
  float d3 = 3.1415;
  float d4 = -4.4;

  /* Real */
  float r1 = -0001.E+12;
  float r2 = 1E+0;
  float r3 = 1E12;
  float r4 = 1.0E-23;
  float r5 = 0.E+12;
  float r6 = .0E+12;
}
```

Write a lex program `exercise2.l` that will classify the numbers as integers,
decimal and real numbers according to the following definition:

* **Integers** are composed of one or more digits preceded by an optional `+` or
  `-`. 
* **Decimals** have a decimal point. Either the integer part or the fractional
  part may be absent, but not both. May optionally be preceded by a `+` or `-`.
* **Reals** is a decimal or an integer followed by `E` or `e` and an integer.

If the compiled file is named `exercise2.l1, then the output should be as
follows:

```bash
$ ./exercise2.exe < test2.c
INTEGER: 000023
INTEGER: +0023
INTEGER: -23
INTEGER: +23
DECIMAL: 1.
DECIMAL: .5
DECIMAL: 3.1415
DECIMAL: -4.4
REAL: -0001.E+12
REAL: 1e+0
REAL: 1E12
REAL: 1.0E-23
REAL: 0.E+12
REAL: .0E+12
```

Play around with different values to test the limits of what C will accept for
each of these number classes. Adapt your code suitably.

## Exercise 3

Write a lex program `exercise3.l` that will implement simplified macro
processing for C programs. The only supported macros are of the form

```c
#define MACRONAME REPLACEMENT
```

where the `MACRONAME` is an indentifier is a string that starts with lowercase
or uppercase English character followed by a sequence of lowercase, uppercase or
digits. `REPLACEMENT` is an arbitrary string that is anything except the newline
character `\n`.

Your program `exercise3.exe` will do the macro processing of C programs. For
example,

```bash
$ ./exercise3.exe < test.c

int main () {
        int x = 0x0;
        printf ("%d\n", 42);
        float f = -1.2E-12;
        return 0;
}
```

where there are no macro definitions anymore, and the macros have been replaced
in the body of the program. For simplicity, assume that there are at most 8
macros allowed, and the `MACRONAME` and `REPLACEMENT` do not exceed 64
characters each.

## References

* Flex manual: [https://www.cs.virginia.edu/~cr4bd/flex-manual/](https://www.cs.virginia.edu/~cr4bd/flex-manual/)
* More reference: See section 3.5.2 of the dragon book.
* "Flex & Bison", by John Levine (O’Reilly, 2009), Chapter 1, [pdf](https://web.iitd.ac.in/~sumeet/flex__bison.pdf)

