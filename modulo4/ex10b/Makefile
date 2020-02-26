ex10b: ex10b.o count_bits_zero.o
	gcc -g -Wall ex10b.o count_bits_zero.o -o ex10b

ex10b.o: ex10b.c count_bits_zero.h
	gcc -g -Wall -c ex10b.c -o ex10b.o

count_bits_zero.o: count_bits_zero.s
	gcc -g -Wall -c count_bits_zero.s -o count_bits_zero.o

debug: ex10b
	gdb -tui ./ex10b

clean:
	rm *.o ex10b

run: ex10b
	./ex10b
