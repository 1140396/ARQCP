#include <stdio.h>

int sum(int a, int b){

  int c;
  
  c = a+b;

  return c;

}

int main (void){

  int i;
  int n;
  int m;
  
  
  do{

    printf("\nInsira 2 valores\n");

    scanf("%i",&n);
    scanf("%i",&m);

    i = sum(n,m);
    
    printf("\nA soma é: %i\n", i);
    
  }while(i >= 10);

  return 0;

}
  
