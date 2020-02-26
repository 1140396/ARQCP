int odd_sum(int *p) {

  int soma = 0, i;

  /** Percorre o array de inteiro e caso o resto da divisão do número 
      por 2 for diferente de 0 soma ao valor total **/

  for (i = 1; i <= *p;i++) {

    if((*(p + i) % 2 != 0)) {

      soma += *(p + i);
    }
  }
  
  return soma;
}
