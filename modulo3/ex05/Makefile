ex05:main.o ex05_funcs.o
	gcc -Wall -g main.o ex05_funcs.o -o ex05

main.o:main.c vec.h
	gcc -Wall -g -c main.c -o main.o

ex05_funcs.o: ex05_funcs.s
	gcc -Wall -g -c ex05_funcs.s -o ex05_funcs.o

clean:
	rm -f *.o main

run: ex05
	./ex05
