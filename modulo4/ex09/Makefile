ex09: ex09.o calculate.o
	gcc -g -Wall ex09.o calculate.o -o ex09

ex09.o: ex09.c ex09.h
	gcc -g -Wall -c ex09.c -o ex09.o

calculate.o: calculate.s
	gcc -g -Wall -c calculate.s -o calculate.o

debug: ex09
	gdb -tui ./ex09

clean:
	rm *.o ex09

run: ex09
	./ex09
