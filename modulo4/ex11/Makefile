ex11: ex11.o rotate_left.o rotate_right.o
	gcc -g -Wall ex11.o rotate_left.o rotate_right.o -o ex11

ex11.o: ex11.c ex11.h
	gcc -g -Wall -c ex11.c -o ex11.o

rotate_left.o: rotate_left.c
	gcc -g -Wall -c rotate_left.c -o rotate_left.o

rotate_right.o: rotate_right.c
	gcc -g -Wall -c rotate_right.c -o rotate_right.o

debug: ex11
	gdb -tui ./ex11

clean:
	rm *.o ex11

run: ex11
	./ex11
