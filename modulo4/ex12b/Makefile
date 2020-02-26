ex12b: ex12b.o activate_bit.o
	gcc -g -Wall ex12b.o activate_bit.o -o ex12b

ex12b.o: ex12b.c activate_bit.h
	gcc -g -Wall -c ex12b.c -o ex12b.o

activate_bit.o: activate_bit.s
	gcc -g -Wall -c activate_bit.s -o activate_bit.o

debug: ex12b
	gdb -tui ./ex12b

clean:
	rm *.o ex12b

run: ex12b
	./ex12b
