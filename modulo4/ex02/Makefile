ex02: ex02.o sum_n.o
	gcc -g -Wall ex02.o sum_n.o -o ex02

ex02.o: ex02.c sum_n.h
	gcc -g -Wall -c ex02.c -o ex02.o

sum_n.o: sum_n.s
	gcc -g -Wall -c sum_n.s -o sum_n.o

debug: ex02
	gdb -tui ./ex02

clean:
	rm *.o ex02

run: ex02
	./ex02
