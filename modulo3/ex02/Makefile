ex02: ex02.o str_copy_porto.o
	gcc -g -Wall ex02.o str_copy_porto.o -o ex02

str_copy_porto.o: str_copy_porto.s
	gcc -g -Wall -c str_copy_porto.s -o str_copy_porto.o

ex02.o: ex02.c str_copy_porto.h
	gcc -g -Wall -c ex02.c -o ex02.o

clean:
	rm -f *.o ex02

debug:
	gdb -tui ex02

run: ex02
	./ex02
