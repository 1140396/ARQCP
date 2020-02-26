#include <stdio.h>
#include "ex15.h"

int n = 0;

int main(){

  int vec[100], num, limit, i, check1;

  printf("\nInsira o tamanho do vetor: ");
  scanf("%d", &num);

  printf("\nInsira o limite maximo de valores aleatorios: ");
  scanf("%d", &limit);

  populate(vec, num, limit);

  //  for(i = 0; i < num; i++){

  // printf("\n%d", *(vec+i));

  // }
  
  //Ciclo for que implementa a função check de modo a verificar a condição vi < vi+1 < vi+2 num determinado conjunto de volores gerados aleatóriamente.
  for(i = 0; i < num - 2; i++){

    check1 = check(*(vec + i), *(vec + i + 1), *(vec + i + 2));

    if(check1 == 1){

      inc_nsets();
    }
  }

  printf("\nA condicao foi verificada %d veze(s).\n", n);

  return 0;
}
