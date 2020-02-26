ex21: main.o salary.o
	gcc -Wall -g main.o salary.o -o ex21

main.o: main.c salary.h
	gcc -Wall -g -c main.c -o main.o

salary.o: salary.s
	gcc -Wall -g -c salary.s -o salary.o

clean: ex21
	rm -f *.o ex21

run: ex21
	./ex21
