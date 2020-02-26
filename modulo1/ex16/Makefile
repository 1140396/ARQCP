ex16: ex16.o where_exists.o
	gcc -g -Wall ex16.o where_exists.o -o ex16

where_exists.o: where_exists.c
	gcc -g -Wall -c where_exists.c -o where_exists.o

ex16.o: ex16.c
	gcc -g -Wall -c ex16.c -o ex16.o

clean:
	rm -f *.o ex16

run: ex16
	./ex16
