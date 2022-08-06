---
layout: page
title: Assignment 01 - MacroJava to MiniJava
permalink: /assignments/macro_to_mini
---

The goal of this assignment is to write a MacroJava to MiniJava translator using
Flex and Bison. 

## Installation

### Ubuntu

```bash
$ sudo apt install flex bison
```

### macOS

I recommend installing through [Homebrew](https://brew.sh/). Install Homebrew
first using the instructions on the Homebrew website and then:


```bash
$ brew install flex bison
```

### Windows

Install [Ubuntu on
VirtualBox](https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview).
Then follow instructions for Ubuntu.

## Assignment details

Your submission should be named `<YOUR-ROLLNO>_P0.tar.gz` compressed file. For
example, if your roll number is `cs20b220`, then the file should be named
`cs20b220_P0.tar.gz`. The compressed gzip archive should contain two files. A
Flex file named as `A1.l` and a Bison file named as `A1.y`.

If `X.java` is a valid MacroJava program, then the following commands should
generate the correct MiniJava code `Y.java`. Take input from standard input and
write to standard output.

```
$ bison A1.y
$ flex A1.l
$ gcc A1.tab.c -lfl -o A1
$ ./A1 < X.java > Y.java
```

If the X.java file is not a valid MacroJava program, then output 

```
$ ./A1 < X.java
//Failed to parse input code
```

## MacroJava 

MacroJava is a subset of Java extended with C style macros. The meaning of a
MacroJava program is given by its meaning as a Java program (after macro
processing). Overloading is not allowed in MacroJava. The MacroJava statement
`System.out.println( ... );` can only print integers. The MacroJava expression
`e1 && e2` is of type boolean, and both `e1` and `e2` must be of type boolean.
MacroJava supports both inline as well as C style comments, but does not support
nested comments.

Some sample MacroJava programs can be found [here](https://github.com/kayceesrk/cs3300_m22/tree/main/assignments/01_macro_to_mini/macro_java_examples).

### Specification

```
              Goal ::= (MacroDefinition)* MainClass ( TypeDeclaration )* <EOF>
         MainClass ::= class Identifier { public static void main ( String [] Identifier ) { System.out.println ( Expression ); } }
   TypeDeclaration ::= class Identifier { ( Type Identifier ;)* ( MethodDeclaration )* }
                     | class Identifier extends Identifier { ( Type Identifier;)* ( MethodDeclaration )* }
 MethodDeclaration ::= public Type Identifier ( ( Type Identifier (, Type Identifier)*)? ) { ( Type Identifier ;)* ( Statement )* return Expression ; }
             Type  ::= int [ ]
                     | boolean
                     | int
                     | Identifier
         Statement ::= { ( Statement )* }
                     | System.out.println ( Expression );
                     | Identifier = Expression ;
                     | Identifier [ Expression ] = Expression ;
                     | if ( Expression ) Statement
                     | if ( Expression ) Statement else Statement
                     | while ( Expression ) Statement
                     | Identifier ( (Expression (, Expression )*)?); /* Macro stmt call */
        Expression ::= PrimaryExpression && PrimaryExpression
                     | PrimaryExpression || PrimaryExpression
                     | PrimaryExpression != PrimaryExpression
                     | PrimaryExpression <= PrimaryExpression
                     | PrimaryExpression + PrimaryExpression
                     | PrimaryExpression - PrimaryExpression
                     | PrimaryExpression * PrimaryExpression
                     | PrimaryExpression / PrimaryExpression
                     | PrimaryExpression [ PrimaryExpression ]
                     | PrimaryExpression . length
                     | PrimaryExpression
                     | PrimaryExpression . Identifier ( (Expression (, Expression )*)? )
                     | Identifier ( (Expression (, Expression )*)? )/* Macro expr call */
 PrimaryExpression ::= Integer
                     | true
                     | false
                     | Identifier
                     | this
                     | new int [ Expression ]
                     | new Identifier ( )
                     | ! Expression
                     | ( Expression )
   MacroDefinition ::= MacroDefExpression
                     | MacroDefStatement
 MacroDefStatement ::= #defineStmt Identifier (Identifier , Identifier, Identifier (, Identifier )*? ) { ( Statement )* }/* More than 2 arguments */
                     | #defineStmt0 Identifier () { ( Statement )* }
                     | #defineStmt1 Identifier ( Identifier ) { ( Statement )* }
                     | #defineStmt2 Identifier (Identifier , Identifier ) { ( Statement )* }
MacroDefExpression ::= #defineExpr Identifier (Identifier , Identifier, Identifier (, Identifier )*? ) ( Expression ) /* More than 2 arguments */
                     | #defineExpr0 Identifier () ( Expression )
                     | #defineExpr1 Identifier ( Identifier ) ( Expression )
                     | #defineExpr2 Identifier (Identifier , Identifier ) ( Expression )
        Identifier ::= <IDENTIFIER>
           Integer ::= <INTEGER_LITERAL>
```

## MiniJava

MiniJava is a subset of Java. The meaning of a MiniJava program is given by its
meaning as a Java program. Overloading is not allowed in MiniJava. The MiniJava
statement `System.out.println( ... );` can only print integers. The MiniJava
expression `e1 && e2` is of type boolean, and both `e1` and `e2` must be of type
boolean.

Some sample MiniJava programs can be found [here](https://github.com/kayceesrk/cs3300_m22/tree/main/assignments/01_macro_to_mini/mini_java_examples).

### Specification

```
                     Goal ::= MainClass ( TypeDeclaration )* <EOF>
                MainClass ::= "class" Identifier "{" "public" "static" "void" "main" "(" "String" "[" "]" Identifier ")" "{" PrintStatement "}" "}"
          TypeDeclaration ::= ClassDeclaration
                            | ClassExtendsDeclaration
         ClassDeclaration ::= "class" Identifier "{" ( VarDeclaration )* ( MethodDeclaration )* "}"
  ClassExtendsDeclaration ::= "class" Identifier "extends" Identifier "{" ( VarDeclaration )* ( MethodDeclaration )* "}"
           VarDeclaration ::= Type Identifier ";"
        MethodDeclaration ::= AccessType Type Identifier "(" ( FormalParameterList )? ")" "{" ( VarDeclaration )* ( Statement )* "return" Expression ";" "}"
      FormalParameterList ::= FormalParameter ( FormalParameterRest )*
          FormalParameter ::= Type Identifier
      FormalParameterRest ::= "," FormalParameter
                     Type ::= ArrayType
                            | BooleanType
                            | IntegerType
                            | Identifier
               AccessType ::= PublicType
                            | PrivateType
                            | ProtectedType
                ArrayType ::= "int" "[" "]"
              BooleanType ::= "boolean"
              IntegerType ::= "int"
               PublicType ::= "public"
             PrivatedType ::= "private"
            ProtectedType ::= "protected"
                Statement ::= Block
                            | AssignmentStatement
                            | ArrayAssignmentStatement
                            | IfStatement
                            | WhileStatement
                            | PrintStatement
                    Block ::= "{" ( Statement )* "}"
      AssignmentStatement ::= Identifier "=" Expression ";"
 ArrayAssignmentStatement ::= Identifier "[" Expression "]" "=" Expression ";"
              IfStatement ::= IfthenElseStatement
                            | IfthenStatement
          IfthenStatement ::= "if" "(" Expression ")" Statement
      IfthenElseStatement ::= "if" "(" Expression ")" Statement "else" Statement
           WhileStatement ::= "while" "(" Expression ")" Statement
           PrintStatement ::= "System.out.println" "(" Expression ")" ";"
               Expression ::= OrExpression
                            | AndExpression
                            | CompareExpression
                            | neqExpression
                            | PlusExpression
                            | MinusExpression
                            | TimesExpression
                            | DivExpression
                            | ArrayLookup
                            | ArrayLength
                            | MessageSend
                            | TernaryExpression
                            | PrimaryExpression
            AndExpression ::= PrimaryExpression "&&" PrimaryExpression
             OrExpression ::= PrimaryExpression "||" PrimaryExpression
        CompareExpression ::= PrimaryExpression "<=" PrimaryExpression
            neqExpression ::= PrimaryExpression "!=" PrimaryExpression
           PlusExpression ::= PrimaryExpression "+" PrimaryExpression
          MinusExpression ::= PrimaryExpression "-" PrimaryExpression
          TimesExpression ::= PrimaryExpression "*" PrimaryExpression
            DivExpression ::= PrimaryExpression "/" PrimaryExpression
              ArrayLookup ::= PrimaryExpression "[" PrimaryExpression "]"
              ArrayLength ::= PrimaryExpression "." "length"
              MessageSend ::= PrimaryExpression "." Identifier "(" ( ExpressionList )? ")"
        TernaryExpression ::= PrimaryExpression "?" PrimaryExpression ":" PrimaryExpression
           ExpressionList ::= Expression ( ExpressionRest )*
           ExpressionRest ::= "," Expression
        PrimaryExpression ::= IntegerLiteral
                            | TrueLiteral
                            | FalseLiteral
                            | Identifier
                            | ThisExpression
                            | ArrayAllocationExpression
                            | AllocationExpression
                            | NotExpression
                            | BracketExpression
           IntegerLiteral ::= <INTEGER_LITERAL>
              TrueLiteral ::= "true"
             FalseLiteral ::= "false"
               Identifier ::= <IDENTIFIER>
           ThisExpression ::= "this"
ArrayAllocationExpression ::= "new" "int" "[" Expression "]"
     AllocationExpression ::= "new" Identifier "(" ")"
            NotExpression ::= "!" Expression
        BracketExpression ::= "(" Expression ")"
           IdentifierList ::= Identifier ( IdentifierRest )*
           IdentifierRest ::= "," Identifier
```
