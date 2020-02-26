ex08: ex08.o calc.o
	gcc -g -Wall ex08.o calc.o -o ex08

ex08.o: ex08.c calc.h
	gcc -g -Wall -c ex08.c -o ex08.o

calc.o: calc.s
	gcc -g -Wall -c calc.s -o calc.o

debug: ex08
	gdb -tui ./ex08

clean:
	rm *.o ex08

run: ex08
	./ex08
