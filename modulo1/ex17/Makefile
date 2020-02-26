ex17: ex17.o main.o
	gcc -Wall -g ex17.o main.o -o ex17

ex17.o: ex17.c
	gcc -Wall -g -c ex17.c -o ex17.o

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex17

run: ex17
	./ex17
