ex14: ex14.o ex14_funcs.o
	gcc -g -Wall ex14.o ex14_funcs.o -o ex14

ex14_funcs.o: ex14_funcs.s
	gcc -g -Wall -c ex14_funcs.s -o ex14_funcs.o

ex14.o: ex14.c ex14.h
	gcc -g -Wall -c ex14.c -o ex14.o

clean:
	rm -f *.o ex14

debug:
	gdb -tui ex14

run: ex14
	./ex14
