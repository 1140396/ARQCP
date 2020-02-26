ex01: main.o asm.o
	gcc -g -Wall main.o asm.o -o ex01

asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o

main.o: main.c asm.h
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o ex01

debug:
	gdb -tui ex01

run: ex01
	./ex01
