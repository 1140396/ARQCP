ex04: ex04.o upper1.o
	gcc -g -Wall ex04.o upper1.o -o ex04

upper1.o: upper1.c
	gcc -g -Wall -c upper1.c -o upper1.o

ex04.o: ex04.c
	gcc -g -Wall -c ex04.c -o ex04.o

clean:
	rm -f *.o ex04

run: ex04
	./ex04
