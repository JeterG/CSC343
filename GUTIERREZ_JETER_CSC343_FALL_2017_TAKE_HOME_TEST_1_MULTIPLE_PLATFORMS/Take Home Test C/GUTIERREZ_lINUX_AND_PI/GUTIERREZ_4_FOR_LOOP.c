#include <stdio.h>
int main () {
   int Local_Variable;
   for( Local_Variable = 10; Local_Variable < 20; Local_Variable = Local_Variable + 1 ){
      printf("Local_Variable's Value is: %d\n", Local_Variable);
   }
   return 0;
}
