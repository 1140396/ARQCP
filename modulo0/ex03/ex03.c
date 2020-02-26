#include <stdio.h>

#define MAX 30

int main(){

  int vec [MAX];

  float media = 0;
  
  void fill_array(int *vec);

  float calc_media(int *vec);

  void fill_array(int *vec);

  fill_array(vec);
  
  media = calc_media(vec);

  printf("\nA media dos valores introduzidos no vetor e: %f", media);
  
  return 0;
}

//Preencher o vetor com o sizeof
void fill_array(int *vec){

  int i;

  //int size = sizeof(vec)/sizeof(vec[0]);

  for(i=0; i < MAX; i++){

    printf("\nIntroduza o valor na posicao %i: ", i+1);
    scanf("%i", &vec[i]);
  }
}

//Calcular a media dos valores com a variavel MAX
float calc_media(int *vec){
   
   int i, somaElem = 0;

   for(i=0 ;i < MAX; i++){

     somaElem += vec[i];
   }
   
   float media = somaElem/MAX;

   return media;
   
  }
