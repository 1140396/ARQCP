ex09: ex09.o main.o
	gcc -Wall -g ex09.o main.o -o ex09

ex09.o: ex09.c
	gcc -Wall -g -c ex09.c -o ex09.o

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex09

run: ex09
	./ex09
