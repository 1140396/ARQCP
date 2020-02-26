ex09: ex09.o vec_search.o
	gcc -g -Wall ex09.o vec_search.o -o ex09

vec_search.o: vec_search.s
	gcc -g -Wall -c vec_search.s -o vec_search.o

ex09.o: ex09.c vec_search.h
	gcc -g -Wall -c ex09.c -o ex09.o

clean:
	rm -f *.o ex09

debug:
	gdb -tui ex09

run: ex09
	./ex09
