ex03: main.o asm.o
	gcc -Wall -g main.o asm.o -o ex03

asm.o: asm.s
	gcc -Wall -g -c asm.s -o asm.o

main.o: main.c asm.h
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex03

run: ex03
	./ex03
