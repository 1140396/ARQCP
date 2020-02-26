int count_bits_zero(int x) {
  
  int bits = 0, i;

  // Percorre o núumero bit a bit e verfica se o bit menos significativo é zero, se for zero adiciona 1 ao contador 
  for (i = 0; i < 32; i++) {

    if (!(x & 1))  {
      bits++;
    }

    x >>= 1;
  }
  
  return bits;
}
