ex13: main.o keep_positives.o
	gcc -Wall -g main.o keep_positives.o -o ex13

main.o: main.c keep_positives.h
	gcc -Wall -g -c main.c -o main.o

keep_positives.o: keep_positives.s
	gcc -Wall -g -c keep_positives.s -o keep_positives.o

clean: ex13
	rm -f *.o

run: ex13
	./ex13
