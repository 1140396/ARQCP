void compress_shorts(short *shorts, int n_shorts, int *integers) {

  int i;

  // Cria um pointer short para percorrer o array de int's
  
  short *ptrShort = (short*) integers;

  /** Percorre o array de int's de 2 em 2 bits e guarda 1 short
      em metade de uma posição do array de int's **/

  for(i = 0; i < n_shorts; i++) {

    *(ptrShort + i) = *(shorts + i);
    
  }
  
}
