ex06: ex06.o power_ref.o
	gcc -g -Wall ex06.o power_ref.o -o ex06

power_ref.o: power_ref.c
	gcc -g -Wall -c power_ref.c -o power_ref.o

ex06.o: ex06.c
	gcc -g -Wall -c ex06.c -o ex06.o

clean:
	rm -f *.o ex06

run: ex06
	./ex06
