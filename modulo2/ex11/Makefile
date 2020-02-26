ex11 : main.o test_flags.o
	gcc -Wall -g main.o test_flags.o -o ex11

test_flags.o : test_flags.s
	gcc -Wall -g -c test_flags.s -o test_flags.o 

main.o : main.c test_flags.h
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex11

run: ex11
	./ex11
