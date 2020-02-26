ex11: ex11.o vec_greater20.o
	gcc -g -Wall ex11.o vec_greater20.o -o ex11

vec_greater20.o: vec_greater20.s
	gcc -g -Wall -c vec_greater20.s -o vec_greater20.o

ex11.o: ex11.c vec_greater20.h
	gcc -g -Wall -c ex11.c -o ex11.o

clean:
	rm -f *.o ex11

debug:
	gdb -tui ex11

run: ex11
	./ex11
