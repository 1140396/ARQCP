ex20: ex20.o ex20_funcs.o
	gcc -g -Wall ex20.o ex20_funcs.o -o ex20

ex20_funcs.o: ex20_funcs.s
	gcc -g -Wall -c ex20_funcs.s -o ex20_funcs.o

ex20.o: ex20.c ex20.h
	gcc -g -Wall -c ex20.c -o ex20.o

clean:
	rm -f *.o ex20

debug:
	gdb -tui ex20

run: ex20
	./ex20
