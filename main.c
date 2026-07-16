#include <stdio.h>

extern int add_numbers(int a, int b);


int main(){
   int a = 5;
   int b = 4;

   int result = add_numbers(a, b);
  printf("result from assembly: %d\n", result);

  return 0;
}
