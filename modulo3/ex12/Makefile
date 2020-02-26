ex12: main.o vec_zero.o
	gcc -Wall -g main.o vec_zero.o -o ex12

main.o: main.c vec_zero.h
	gcc -Wall -g -c main.c -o main.o

vec_zero.o: vec_zero.s
	gcc -Wall -g -c vec_zero.s -o vec_zero.o

clean: ex12
	rm -f *.o ex12

run: ex12
	./ex12
