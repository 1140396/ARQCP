#include <stdio.h>

int main() {

  int x = 5;
  int *xPtr = &x;
  float y = *xPtr + 3;
  int vec[] = {10, 11, 12, 13};

  int a, b;

  printf("Valor de x: %d\n", x);
  printf("Valor de y: %f\n", y);

  printf("Endereço de x: %p\n", &x);
  printf("Endereço de xPtr: %p\n", &xPtr);
    
  printf("Valor apontado por xPtr: %d\n", *xPtr);
    
  printf("Endereço de vec: %p\n", &vec);
    
  for(a = 0; a < 4; ++a)  {
      
    printf("Valor da posição %d do vector: %d\n", a, vec[a]);

  }
    
  for(b = 0; b < 4; ++b) {
      
    printf("Endereço da posição %d do vector: %p\n", b, &vec[b]);
      
  }
      
  return 0;
}
