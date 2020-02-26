int rotate_left(int num, int nbits) {

  unsigned int numAux = (unsigned int) num;

  // move os valores do lado direito do número para o lado esquerdo de acordo com o número de bits passado por parâmetro
  num <<= nbits;

  // move os valores do lado esquerdo do número para o lado direito de acordo com o número de bits passado por parâmetro
  numAux >>= (32 - nbits);

  // faz uma operação OR entre os 2 número para juntar o lado esquerdo de num com o lado direito de numAux
  num |= numAux;
  
  return num;
}
  
