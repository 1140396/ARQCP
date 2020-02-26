ex12a: ex12a.o activate_bit.o
	gcc -g -Wall ex12a.o activate_bit.o -o ex12a

ex12a.o: ex12a.c activate_bit.h
	gcc -g -Wall -c ex12a.c -o ex12a.o

activate_bit.o: activate_bit.c
	gcc -g -Wall -c activate_bit.c -o activate_bit.o

debug: ex12a
	gdb -tui ./ex12a

clean:
	rm *.o ex12a

run: ex12a
	./ex12a
