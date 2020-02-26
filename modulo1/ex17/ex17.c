//Função que troca os elementos de um vetor 1 para um vetor 2 e vice versa 
void swap(int *vec1, int *vec2, int n){

  int i, aux;

  for(i = 0; i < n; i++){

    aux = vec1[i];
    vec1[i] = vec2[i];
    vec2[i] = aux;
  }
}
