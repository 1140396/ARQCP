ex17b: ex17b.o add_byte.o
	gcc -g -Wall ex17b.o add_byte.o -o ex17b

ex17b.o: ex17b.c add_byte.h
	gcc -g -Wall -c ex17b.c -o ex17b.o

add_byte.o: add_byte.s
	gcc -g -Wall -c add_byte.s -o add_byte.o

debug: ex17b
	gdb -tui ./ex17b

clean:
	rm *.o ex17b

run: ex17b
	./ex17b
