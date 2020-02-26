ex15: main.o compute.o
	gcc -Wall -g main.o compute.o -o ex15

compute.o: compute.s
	gcc -Wall -g -c compute.s -o compute.o

main.o: main.c compute.h
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex15

run: ex15
	./ex15
