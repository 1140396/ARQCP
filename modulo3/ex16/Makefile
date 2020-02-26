ex16: ex16.o swap.o
	gcc -g -Wall ex16.o swap.o -o ex16

swap.o: swap.s
	gcc -g -Wall -c swap.s -o swap.o

ex16.o: ex16.c swap.h
	gcc -g -Wall -c ex16.c -o ex16.o

clean:
	rm -f *.o ex16

debug:
	gdb -tui ex16

run: ex16
	./ex16
