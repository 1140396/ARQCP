ex07: ex07.o decrypt.o encrypt.o
	gcc -Wall -g ex07.o decrypt.o encrypt.o -o ex07

ex07.o: ex07.c ex07.h
	gcc -Wall -g -c ex07.c -o ex07.o

decrypt.o: decrypt.s
	gcc -Wall -g -c decrypt.s -o decrypt.o

encrypt.o: encrypt.s
	gcc -Wall -g -c encrypt.s -o encrypt.o

debug: ex07
	gdb -tui ./ex07

clean: ex07
	rm -f *.o ex07

run: ex07
	./ex07
