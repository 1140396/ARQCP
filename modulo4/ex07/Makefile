ex07:main.o count_even.o
	gcc -g -Wall main.o count_even.o -o ex07

count_even.o: count_even.s
	gcc -g -Wall -c count_even.s -o count_even.o

main.o:main.c library.h
	gcc -g -Wall -c main.c -o main.o

debug:
	gdb -tui ./ex07

clean:
	rm -f *.o ex07

run: ex07
	./ex07
