ex02b: main.o
	gcc -g -Wall main.o -o ex02b

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

debug: ex02b
	gdb -tui ./ex02b

clean:
	rm *.o ex02b

run: ex02b
	./ex02b
