void power_ref(int *x, int y) {

  int i;

  int valor = *x;

  

  if(y < 0) {
    
    *x = 0;

  } else if (y == 0) {

    *x = 1;
    
  } else {

    for(i = 1; i < y; i++) {

    valor *= *x;
  }
    
    *x = valor;
  }
}
