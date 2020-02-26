# include <stdio.h>

//Funcao que conta os valores iguais existentes no vetor, ambos introduzidos pelo utilizador
int count(int *vec, int n, int value){

  int i, vIgual = 0;
  
  for(i = 0; i < n; i++){

    if(vec[i] == value){

      vIgual++; 
    } 
  }
   return vIgual;
}

int main(){

  int n, val, num, i;
  
  printf("\nDigite o tamanho do vetor: ");
  scanf("%d", &n);

  int vec[n];
  
  printf("\nDigite o numero que quer procurar no vetor: ");
  scanf("%d", &num);


  for(i = 0; i < n; i++){

    printf("\nDigite o valor %d no vetor: ", i + 1);
    scanf("%d", &vec[i]);
    
  }

  int count(int *vec, int n, int value);

  val = count(vec, n, num);

  printf("\nForam encontrados %d digitos iguais no vetor\n", val);

  return 0;

}
