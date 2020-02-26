ex01: ex01.o cube.o
	gcc -Wall -g ex01.o cube.o -o ex01

ex01.o: ex01.c library.h
	gcc -Wall -g -c ex01.c -o ex01.o

cube.o: cube.s
	gcc -Wall -g -c cube.s -o cube.o

clean: ex01
	./ -f *.o ex01
run: ex01
	./ex01
