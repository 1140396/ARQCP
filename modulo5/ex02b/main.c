#include <stdio.h>
#include <string.h>

int main(void){

  struct s_arqcp{

    char vec[32];
    float a;
    int b;
    
  };

  struct s_arqcp s1;

  struct s_arqcp *struct_ptr = &s1;

  strcpy(struct_ptr -> vec, "arquitetura de computadores");

  printf("[1]=%s\n", struct_ptr -> vec);
  struct_ptr -> a = 123.5;

  printf("[2]=%f\n", struct_ptr -> a);
  struct_ptr -> b = 2;

  printf("[3]=%d\n", struct_ptr -> b);

  printf("[1]=%s\n", struct_ptr -> vec);
  printf("[2]=%f\n", struct_ptr -> a);
  printf("[3]=%d\n", struct_ptr -> b);

  return 0;
} 
