ex20: ex20.o check_num.o
	gcc -g -Wall ex20.o check_num.o -o ex20

check_num.o: check_num.s
	gcc -g -Wall -c check_num.s -o check_num.o

ex20.o: ex20.c check_num.h
	gcc -g -Wall -c ex20.c -o ex20.o

clean:
	rm -f *.o ex20

debug:
	gdb -tui ex20

run: ex20
	./ex20
