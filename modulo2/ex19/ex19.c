#include <stdio.h>
#include "needed_time.h"

short current = 0, desired = 0;

int main() {

  int time;
  
  printf("Temperatura atual: ");
  scanf("%d", &current);
  printf("Temperatura desejada: ");
  scanf("%d", &desired);

  time = needed_time();

  printf("Tempo necessário até atingir temperatura desejada: %d segundos\n", time);

  return 0;
}
