#include <stdio.h>
#include "salary.h"

int code = 0, current_salary = 0;

int main(){

  int newSalary = 0;
  
  printf("\nCode: ");
  scanf("\n%d", &code);
  
  switch(code){

  case 10:

    printf("\nCurrent salary?");
    scanf("\n%d", &current_salary);

    newSalary = salary();

    printf("New salary: %d\n", newSalary);
  
    break;
    
  case 11:
 
    printf("\nCurrent salary?");
    scanf("\n%d", &current_salary);

    newSalary = salary();

    printf("New salary: %d\n", newSalary);

    break;
    
  case 12:
  
    printf("\nCurrent salary?");
    scanf("\n%d", &current_salary);

    newSalary = salary();

    printf("New salary: %d\n", newSalary);

    break;
    
  default:
    
    printf("\nCurrent salary?");
    scanf("\n%d", &current_salary);

    newSalary = salary();

    printf("\nNew salary: %d\n", newSalary);

    break;
  }  

  return 0;
}
