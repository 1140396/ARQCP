#include <stdio.h>
#include <stdlib.h>

//Retirar a parte inteira de um número
int integer_part(char *x){

  char *endptr;
  char *loc = strchr(x, '.');
  int mantissa = strod(loc+1, endptr);

  return mantissa;
  
}

//Retirar parte fraccionaria de um número
int fractional_part(char *x){

  char *endptr;
  char *loc = strchr(x, '.');
  int mantissa = strcod(loc + 1, endptr);
  int whole = strcod(x, endptr);

  return whole;
}

int main(){

  int integer_part(char *x);
  int fractional_part(char *x);

  char *x = "123.456";

  int *integer = integer_part(x);

  int *decimal = fractional_part(x);
  
  printf("A parte inteira é: %d", integer);
  printf("A parte decimal é: %d", decimal);
  
  return 0;
}
