#include <stdio.h>

extern int add_numbers(int a, int b);


int main(){
   int a = 10;
   int b = 20;

   int result = add_numbers(a, b);
  printf("result from assembly: %d\n", result);

  return 0;
}
