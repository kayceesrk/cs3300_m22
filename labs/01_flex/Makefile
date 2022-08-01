demo%.exe: demo%.l
	flex $<
	gcc lex.yy.c -o $@ -ll

clean:
	rm -f lex.yy.c a.out *.exe *~

exercise%.exe: exercise%.l
	flex $<
	gcc lex.yy.c -o $@ -lfl
	#gcc lex.yy.c -o $@ -ll #on macOS
