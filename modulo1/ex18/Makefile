ex18: ex18.o compress_shorts.o
	gcc -g -Wall ex18.o compress_shorts.o -o ex18

compress_shorts.o: compress_shorts.c
	gcc -g -Wall -c compress_shorts.c -o compress_shorts.o

ex18.o: ex18.c
	gcc -g -Wall -c ex18.c -o ex18.o

clean:
	rm -f *.o ex18

run: ex18
	./ex18
