ex13: ex13.o getArea.o
	gcc -g -Wall ex13.o getArea.o -o ex13

getArea.o: getArea.s
	gcc -g -Wall -c getArea.s -o getArea.o

ex13.o: ex13.c getArea.h
	gcc -g -Wall -c ex13.c -o ex13.o

clean:
	rm -f *.o ex13

debug:
	gdb -tui ex13

run: ex13
	./ex13
