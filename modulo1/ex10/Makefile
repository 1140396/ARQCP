ex10: ex10.o odd_sum.o
	gcc -g -Wall ex10.o odd_sum.o -o ex10

odd_sum.o: odd_sum.c
	gcc -g -Wall -c odd_sum.c -o odd_sum.o

ex10.o: ex10.c
	gcc -g -Wall -c ex10.c -o ex10.o

clean:
	rm -f *.o ex10

run: ex10
	./ex10
