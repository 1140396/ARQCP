ex19: ex19.o needed_time.o
	gcc -g -Wall ex19.o needed_time.o -o ex19

needed_time.o: needed_time.s
	gcc -g -Wall -c needed_time.s -o needed_time.o

ex19.o: ex19.c needed_time.h
	gcc -g -Wall -c ex19.c -o ex19.o

clean:
	rm -f *.o ex19

debug:
	gdb -tui ex19

run: ex19
	./ex19
