ex14b: ex14b.o join_bits.o
	gcc -g -Wall ex14b.o join_bits.o -o ex14b

ex14b.o: ex14b.c join_bits.h
	gcc -g -Wall -c ex14b.c -o ex14b.o

join_bits.o: join_bits.s
	gcc -g -Wall -c join_bits.s -o join_bits.o

debug: ex14b
	gdb -tui ./ex14b

clean:
	rm *.o ex14b

run: ex14b
	./ex14b
