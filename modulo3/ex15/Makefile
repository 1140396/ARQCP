ex15: ex15.o sum_first_byte.o
	gcc -g -Wall ex15.o sum_first_byte.o -o ex15

sum_first_byte.o: sum_first_byte.s
	gcc -g -Wall -c sum_first_byte.s -o sum_first_byte.o

ex15.o: ex15.c sum_first_byte.h
	gcc -g -Wall -c ex15.c -o ex15.o

clean:
	rm -f *.o ex15

debug:
	gdb -tui ex15

run: ex15
	./ex15
