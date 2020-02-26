ex17: main.o calculator.o
	gcc -Wall -g main.o calculator.o -o ex17

calculator.o: calculator.s
	gcc -Wall -g -c calculator.s -o calculator.o

main.o: main.c calculator.h
	gcc -Wall -g -c main.c -o main.o

clean:
	rm -f *.o ex17

run: ex17
	./ex17
