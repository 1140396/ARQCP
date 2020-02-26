ex14c: ex14c.o join_bits.o mixed_sum.o
	gcc -g -Wall ex14c.o join_bits.o mixed_sum.o -o ex14c

ex14c.o: ex14c.c ex14c.h
	gcc -g -Wall -c ex14c.c -o ex14c.o

join_bits.o: join_bits.s
	gcc -g -Wall -c join_bits.s -o join_bits.o

mixed_sum.o: mixed_sum.s
	gcc -g -Wall -c mixed_sum.s -o mixed_sum.o

debug: ex14c
	gdb -tui ./ex14c

clean:
	rm *.o ex14c

run: ex14c
	./ex14c
