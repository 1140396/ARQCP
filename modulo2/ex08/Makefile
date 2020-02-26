ex08: ex08.o crossSumBytes.o
	gcc -Wall -g ex08.o crossSumBytes.o -o ex08

ex08.o: ex08.c crossSumBytes.h
	gcc -Wall -g -c ex08.c -o ex08.o

crossSumBytes.o: crossSumBytes.s
	gcc -Wall -g -c crossSumBytes.s -o crossSumBytes.o


clean:
	rm -f *.o ex08

run: ex08
	./ex08
