ex05: ex05.o upper2.o
	gcc -g -Wall ex05.o upper2.o -o ex05

upper2.o: upper2.c
	gcc -g -Wall -c upper2.c -o upper2.o

ex05.o: ex05.c
	gcc -g -Wall -c ex05.c -o ex05.o

clean:
	rm -f *.o ex05

run: ex05
	./ex05
