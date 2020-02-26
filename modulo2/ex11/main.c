#include <stdio.h>
#include "test_flags.h"

unsigned int op1 = 10, op2 = 12;

int main() {

  char res = test_flags() + 48;
  
  if(res == '1'){

    printf("\nCom Flag\n");

  }else{

    printf("Sem Flag\n");
  }

  return 0;
}
