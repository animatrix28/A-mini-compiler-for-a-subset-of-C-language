# A-mini-compiler-for-a-subset-of-C-language
A compiler is developed with following features:
Minimum two data types, Minimum two control statements, Minimum two looping statements, Input-output functions, Compound statements and two-dimensional Array, Assume Operators, Symbols and Reserved keywords
Based on the above features a compiler for C is made which can check whether the C program is syntactically correct or not.
If there is any error then it will show on which line error has occured.
A lex file C_compiler.l is defined with all the tolens defined in it. A yacc file C_compiler.y is defined with grammars for each features. Whenever the program runs grammar will be checked.
To run lex file and yacc file you need to follow below steps:

Step 1: Open CMD and go to the path where you have stored this lex and yacc file.

Step 2: Then write- yacc -d C_compiler.y and enter.

Step 3: Then write- lex C_comiler.l and enter.

Step 4: Run gcc compipler to run the above lex and yacc file as- gcc lex.yy.c C_compiler.tab.c

Step 5: Write your program in a notepad and save it with .c extension and then run the executable file with that c file as input- a.exe<file_name.c

You can also refer to documentation.docx file to read more details about what is lex and yacc and how these files are created and defined and also how to execute the file. Advantage, disadvantage, limitation and also improvement that can be done in the program is written in the document.
