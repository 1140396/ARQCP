ex10: ex10.o sum2ints.o
	gcc -g -Wall ex10.o sum2ints.o -o ex10

sum2ints.o: sum2ints.s
	gcc -g -Wall -c sum2ints.s -o sum2ints.o

ex10.o: ex10.c sum2ints.h
	gcc -g -Wall -c ex10.c -o ex10.o

clean:
	rm -f *.o ex10

debug:
	gdb -tui ex10

run: ex10
	./ex10
