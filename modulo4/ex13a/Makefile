ex13a: main.o active_bits.o
	gcc -Wall -g main.o active_bits.o -o ex13a

main.o: main.c library.h
	gcc -Wall -g -c main.c -o main.o

active_bits:

	gcc -Wall -g -c active_bits.c -o active_bits.o

debug:
	gdb -tui ex13a

clean: ex13a
	rm *.o

run: ex13a
	./ex13a
