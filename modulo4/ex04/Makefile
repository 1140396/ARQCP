ex04: ex04.o sum_smaller.o
	gcc -g -Wall ex04.o sum_smaller.o -o ex04

ex04.o: ex04.c sum_smaller.h
	gcc -g -Wall -c ex04.c -o ex04.o

sum_smaller.o: sum_smaller.s
	gcc -g -Wall -c sum_smaller.s -o sum_smaller.o

debug: ex04
	gdb -tui ./ex04

clean:
	rm *.o ex04

run: ex04
	./ex04
