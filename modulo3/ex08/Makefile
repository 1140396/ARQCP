ex08: ex08.o ex08_funcs.o
	gcc -g -Wall ex08.o ex08_funcs.o -o ex08

ex08_funcs.o: ex08_funcs.s
	gcc -g -Wall -c ex08_funcs.s -o ex08_funcs.o

ex08.o: ex08.c ex08.h
	gcc -g -Wall -c ex08.c -o ex08.o

clean:
	rm -f *.o ex08

debug:
	gdb -tui ex08

run: ex08
	./ex08
