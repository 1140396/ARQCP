ex04: main.o
	gcc -g -Wall main.o -o ex04

update_address.o: update_address.s
	gcc -Wall -g -c update_address.s -o update_address.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

debug: ex04
	gdb -tui ./ex04

clean:
	rm *.o ex04

run: ex04
	./ex04
