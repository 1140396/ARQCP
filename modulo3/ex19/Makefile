ex19: main.o frequencies.o
	gcc -g -Wall main.o frequencies.o -o ex19

frequencies.o: frequencies.s
	gcc -g -Wall -c frequencies.s -o frequencies.o

main.o: main.c library.h
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex19

debug:
	gdb -tui ex19

run: ex19
	./ex19

