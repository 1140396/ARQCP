ex12: ex12.o isMultiple.o
	gcc -g -Wall ex12.o isMultiple.o -o ex12

isMultiple.o: isMultiple.s
	gcc -g -Wall -c isMultiple.s -o isMultiple.o

ex12.o: ex12.c isMultiple.h
	gcc -g -Wall -c ex12.c -o ex12.o

clean:
	rm -f *.o ex12

debug:
	gdb -tui ex12

run: ex12
	./ex12
