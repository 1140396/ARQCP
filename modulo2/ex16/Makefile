ex16: ex16.o steps.o
	gcc -g -Wall ex16.o steps.o -o ex16

steps.o: steps.s
	gcc -g -Wall -c steps.s -o steps.o

ex16.o: ex16.c steps.h
	gcc -g -Wall -c ex16.c -o ex16.o

clean:
	rm -f *.o ex16

debug:
	gdb -tui ex16

run: ex16
	./ex16
