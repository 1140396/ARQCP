ex12c: ex12c.o activate_bit.o activate_2bits.o
	gcc -g -Wall ex12c.o activate_bit.o activate_2bits.o -o ex12c

ex12c.o: ex12c.c ex12c.h
	gcc -g -Wall -c ex12c.c -o ex12c.o

activate_bit.o: activate_bit.s
	gcc -g -Wall -c activate_bit.s -o activate_bit.o

activate_2bits.o: activate_2bits.s
	gcc -g -Wall -c activate_2bits.s -o activate_2bits.o

debug: ex12c
	gdb -tui ./ex12c

clean:
	rm *.o ex12c

run: ex12c
	./ex12c
