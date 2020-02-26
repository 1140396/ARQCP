ex14a: ex14a.o join_bits.o
	gcc -g -Wall ex14a.o join_bits.o -o ex14a

ex14a.o: ex14a.c join_bits.h
	gcc -g -Wall -c ex14a.c -o ex14a.o

join_bits.o: join_bits.c
	gcc -g -Wall -c join_bits.c -o join_bits.o

debug: ex14a
	gdb -tui ./ex14a

clean:
	rm *.o ex14a

run: ex14a
	./ex14a
