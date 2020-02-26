ex17: main.o function.o
	gcc -Wall -g main.o function.o -o ex17

function.o: function.s
	gcc -Wall -g -c function.s -o function.o

main.o: main.c function.h
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex17

run: ex17
	./ex17
