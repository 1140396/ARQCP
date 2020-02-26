int sort_without_reps(int *src, int n, int *dest){

  int temp,i, j,k;

  //Obter os valores do vetor origem
  for(i = 0; i < n; i++){

    *(dest + i) = *(src + i);
  }
  
  //Algoritmo de ordenação por ordem crescente
  for(i = 0; i < n; i++){
    for(j = i+1; j < n; j++){

      if(*(dest + i) > *(dest + j)){

	temp = *(dest + i);
	*(dest + i) = *(dest + j);
	*(dest + j) = temp;
      }
    }
  }

    //Algoritmo para retirar elementos repetidos do vetor dest
  for(i = 0; i < n; i++){
    for(j = i+1; j < n; j++){

      if(*(dest + j) == *(dest + i)){

	for(k = j; k < n; k++){

	  *(dest + k) = *(dest + k +1);

	}
	//Decrementa o tamanho do array depois de remover o elemento
	n--;

	//Se ocorrer troca de elementos não aumenta o j
	j--;
      }
    }
  }

  return n;

}
