ex06: main.o encrypt.o
	gcc -Wall -g main.o encrypt.o -o ex06

main.o: main.c encrypt.h
	gcc -Wall -g -c main.c -o main.o

encrypt.o: encrypt.s
	gcc -Wall -g -c encrypt.s -o encrypt.o

clean: ex06
	rm -f *.o ex06

run: ex06
	./ex06
