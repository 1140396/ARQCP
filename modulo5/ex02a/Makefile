ex02a: main.o
	gcc -g -Wall main.o -o ex02a

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

debug: ex02a
	gdb -tui ./ex02a

clean:
	rm *.o ex02a

run: ex02a
	./ex02a
