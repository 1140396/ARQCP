ex10c: ex10c.o vec_count_bits_zero.o
	gcc -g -Wall ex10c.o vec_count_bits_zero.o -o ex10c

ex10c.o: ex10c.c ex10c.h
	gcc -g -Wall -c ex10c.c -o ex10c.o

vec_count_bits_zero.o: vec_count_bits_zero.s
	gcc -g -Wall -c vec_count_bits_zero.s -o vec_count_bits_zero.o

debug: ex10c
	gdb -tui ./ex10c

clean:
	rm *.o ex10c

run: ex10c
	./ex10c
