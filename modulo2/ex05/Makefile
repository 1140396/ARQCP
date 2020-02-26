ex05: ex05.o swapBytes.o
	gcc -g -Wall ex05.o swapBytes.o -o ex05

swapBytes.o: swapBytes.s
	gcc -g -Wall -c swapBytes.s -o swapBytes.o

ex05.o: ex05.c swapBytes.h
	gcc -g -Wall -c ex05.c -o ex05.o

clean:
	rm -f *.o ex05

debug:
	gdb -tui ex05

run: ex05
	./ex05
