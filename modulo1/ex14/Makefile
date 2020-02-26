ex14: ex14.o frequencies.o
	gcc -g -Wall ex14.o frequencies.o -o ex14

frequencies.o: frequencies.c
	gcc -g -Wall -c frequencies.c -o frequencies.o

ex14.o: ex14.c
	gcc -g -Wall -c ex14.c -o ex14.o

clean:
	rm -f *.o ex14

run: ex14
	./ex14
