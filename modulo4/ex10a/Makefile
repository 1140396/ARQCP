ex10a: ex10a.o count_bits_zero.o
	gcc -g -Wall ex10a.o count_bits_zero.o -o ex10a

ex10a.o: ex10a.c count_bits_zero.h
	gcc -g -Wall -c ex10a.c -o ex10a.o

count_bits_zero.o: count_bits_zero.c
	gcc -g -Wall -c count_bits_zero.c -o count_bits_zero.o

debug: ex10a
	gdb -tui ./ex10a

clean:
	rm *.o ex10a

run: ex10a
	./ex10a
