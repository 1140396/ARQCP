//Função que copia um vetor para outro os elementos através do apontador
void copy_vec(int *vec1, int *vec2, int n){

  int i;
  int *p1 = vec1;
  int *p2 = vec2;

  for(i = 0; i < n; i++){

    *(p2+i) = *(p1+i);
  }
}
