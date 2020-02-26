ex13: ex13.o where_is.o
	gcc -g -Wall ex13.o where_is.o -o ex13

where_is.o: where_is.c
	gcc -g -Wall -c where_is.c -o where_is.o

ex13.o: ex13.c
	gcc -g -Wall -c ex13.c -o ex13.o

clean:
	rm -f *.o ex13

run: ex13
	./ex13
