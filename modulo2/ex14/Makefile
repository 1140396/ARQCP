ex14: ex14.o getArea.o
	gcc -g -Wall ex14.o getArea.o -o ex14

getArea.o: getArea.s
	gcc -g -Wall -c getArea.s -o getArea.o

ex14.o: ex14.c getArea.h
	gcc -g -Wall -c ex14.c -o ex14.o

clean:
	rm -f *.o ex14

debug:
	gdb -tui ex14

run: ex14
	./ex14
