#include <stdio.h>
#include "library.h"

int main(){

  char string1 = 'A';

  char string2 = 'D';
  
  char *a = &string1;

  char *b = &string2;
  
  //Funcao
  int res = test_equal(a,b);

  if(res == 1){

    printf("\nAs strings sao iguais\n");

  }else{

    printf("\nAs strings sao diferentes\n");
  }
  
  return 0;
}
