ex12: ex12.o main.o
	gcc -Wall -g ex12.o main.o -o ex12

ex12.o: ex12.c
	gcc -Wall -g -c ex12.c -o ex12.o

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex12

run: ex12
	./ex12
