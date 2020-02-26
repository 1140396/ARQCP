ex03: ex03.o str_copy_porto2.o
	gcc -g -Wall ex03.o str_copy_porto2.o -o ex03

str_copy_porto2.o: str_copy_porto2.s
	gcc -g -Wall -c str_copy_porto2.s -o str_copy_porto2.o

ex03.o: ex03.c str_copy_porto2.h
	gcc -g -Wall -c ex03.c -o ex03.o

clean:
	rm -f *.o ex03

debug:
	gdb -tui ex03

run: ex03
	./ex03
