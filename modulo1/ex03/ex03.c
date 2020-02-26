//Função que soma todos os elementos pares de um vetor de inteiros
int sum_even(int *p, int num){

  int total = 0, i;
  
  for(i = 0; i < num; i++){

    if(p[i]%2 == 0){

      total += p[i];
    }
  }

  return total;
}
