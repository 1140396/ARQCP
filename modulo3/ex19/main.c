#include <stdio.h>
#include "library.h"

int num = 10;

char vec_grades [] = {3,2,3,5,6,2,2,0,8,9};

int vec_freq[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};

char *ptrgrades = vec_grades;

int *ptrfreq = vec_freq;

int main(){

  int i,j;
  
  printf("\n --- VETOR DE NOTAS --- \n");

  for(i = 0; i < num; i++){

    printf("%d|", vec_grades[i]);
  }

  printf("\n");

  frequencies();
  
  printf("\n --- VETOR DE FREQUENCIAS --- \n");

  for(j = 0; j < 20; j++){

    printf("%d|", vec_freq[j]);
  }

  printf("\n");

  return 0;
}
