ex07: ex07.o crossSumBytes.o
	gcc -Wall -g ex07.o crossSumBytes.o -o ex07

ex07.o: ex07.c crossSumBytes.h
	gcc -Wall -g -c ex07.c -o ex07.o

crossSumBytes.o: crossSumBytes.s
	gcc -Wall -g -c crossSumBytes.s -o crossSumBytes.o


clean:
	rm -f *.o ex07

run: ex07
	./ex07
