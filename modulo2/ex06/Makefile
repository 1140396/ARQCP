ex06: main.o asm.o
	gcc -Wall -g main.o asm.o -o ex06

main.o: main.c asm.h
	gcc -Wall -g -c main.c -o main.o

asm.o: asm.s
	gcc -Wall -g -c asm.s -o asm.o

clean:
	rm -f *.o ex06

run: ex06
	./ex06
