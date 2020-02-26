ex11: ex11.o main.o
	gcc -Wall -g ex11.o main.o -o ex11

ex11.o: ex11.c
	gcc -Wall -g -c ex11.c -o ex11.o

main.o: main.c
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex11

run: ex11
	./ex11
