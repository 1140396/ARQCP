ex09: ex09.o sum_and_subtract.o
	gcc -g -Wall ex09.o sum_and_subtract.o -o ex09

sum_and_subtract.o: sum_and_subtract.s
	gcc -g -Wall -c sum_and_subtract.s -o sum_and_subtract.o

ex09.o: ex09.c sum_and_subtract.h
	gcc -g -Wall -c ex09.c -o ex09.o

clean:
	rm -f *.o ex09

debug:
	gdb -tui ex09

run: ex09
	./ex09
