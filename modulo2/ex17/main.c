#include <stdio.h>
#include "calculator.h"

int op1 = 0, op2 = 0, choice = 0, res = 0;

int main(){

  printf("\n----- CALCULATOR -----\n");

  printf("Menu \n1. Addiction\n2. Subtraction\n3. Multiplication\n4. Division\n5. Modulus\n6. Power of 2\n7. Power of 3\n8. Exit");

  printf("\nEnter the operation\n");
  scanf("%d", &choice);

  switch(choice){

    //Addiction
  case 1 :

      printf("\nVal 1: ");
      scanf("%d", &op1);

      printf("\nVal 2: ");
      scanf("%d", &op2);

      res = calculator();
      
      printf("\nRes = %d", res);

      break;

      //Subtraction
  case 2 :
	
      printf("\nVal 1: ");
      scanf("%d", &op1);

      printf("\nVal 2: ");
      scanf("%d", &op2);

      res = calculator();
      
      printf("\nRes = %d", res);

      break;

      //Multiplication
  case 3 :

	
      printf("\nVal 1: ");
      scanf("%d", &op1);

      printf("\nVal 2: ");
      scanf("%d", &op2);

      res = calculator();
      
      printf("\nRes = %d", res);

      break;

      //Division
  case 4 :

      printf("\nVal 1: ");
      scanf("%d", &op1);

      printf("\nVal 2: ");
      scanf("%d", &op2);

      res = calculator();
      
      printf("\nRes = %d", res);

      break;

      //Modulus
  case 5 :

    printf("\nVal 1: ");
    scanf("%d", &op1);

    if(op1 < 0){

      res = calculator();
      
      printf("\nRes = %d", res);
      
    }else{

      printf("Res = %d\n", op1);
    }
      break;

      //Power_of_2
  case 6 :

      printf("\nVal 1: ");
      scanf("%d", &op1);

      res = calculator();
      
      printf("\nRes = %d", res);

      break;

      //Power_of_3
  case 7 :

      printf("\nVal 1: ");
      scanf("%d", &op1);

      res = calculator();
      
      printf("\nRes = %d", res);

      break;

      //End
  case 8 :

	printf("\nEnd\n");

	break;
  }
  
  return 0;
}
