ex10: main.o concatenates.o
	gcc -Wall -g main.o concatenates.o -o ex10

main.o: main.c concatenates.h
	gcc -Wall -g -c main.c -o main.o

concatenates.o: concatenates.s
	gcc -Wall -g -c concatenates.s -o concatenates.o

clean: ex10
	rm -f *.o ex10

run: ex10
	./ex10
