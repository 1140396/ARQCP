ex19: ex19.o find_word.o
	gcc -g -Wall ex19.o find_word.o -o ex19

find_word.o: find_word.c
	gcc -g -Wall -c find_word.c -o find_word.o

ex19.o: ex19.c
	gcc -g -Wall -c ex19.c -o ex19.o

clean:
	rm -f *.o ex19

run: ex19
	./ex19
