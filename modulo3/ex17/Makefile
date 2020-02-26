ex17: main.o array_sort.o
	gcc -Wall -g main.o array_sort.o -o ex17

main.o: main.c array_sort.h
	gcc -Wall -g -c main.c -o main.o

array_sort.o: array_sort.s
	gcc -Wall -g -c array_sort.s -o array_sort.o

clean:
	rm *.o ex17

run: ex17
	./ex17
