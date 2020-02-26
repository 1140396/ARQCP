ex17a: ex17a.o add_byte.o
	gcc -g -Wall ex17a.o add_byte.o -o ex17a

ex17a.o: ex17a.c add_byte.h
	gcc -g -Wall -c ex17a.c -o ex17a.o

add_byte.o: add_byte.c
	gcc -g -Wall -c add_byte.c -o add_byte.o

debug: ex17a
	gdb -tui ./ex17a

clean:
	rm *.o ex17a

run: ex17a
	./ex17a
