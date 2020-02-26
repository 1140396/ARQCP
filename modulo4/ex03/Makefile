ex03: main.o greatest.o
	gcc -Wall -g main.o greatest.o -o ex03

main.o: main.c library.h
	gcc -Wall -g -c main.c -o main.o

greatest.o: greatest.s
	gcc -Wall -g -c greatest.s -o greatest.o

clean: ex03
	-f *.o ex03

run: ex03
	./ex03
