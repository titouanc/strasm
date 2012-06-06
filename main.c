#include <stdio.h>
#include "strasm.h"

const char *hello = "Hello";
const char *world = "World !";

int main(int argc, const char **argv){
  char str[20] = {'\0'};
  char *c, l='l';
  
  printf("strlenasm(%s) = %u\n", hello, strlenasm(hello));
  
  strcpyasm(str, hello);
  printf("Copy: %s\n", str);
  
  strcatasm(str, " ");
  strncatasm(str, world, 5);
  puts(str);
  
  printf("\"%s\" <=> \"%s\": %d\n", hello, str, strcmpasm(hello, str));

  c = strchrasm(hello, l);
  if (c)
    printf("%s has %c\n", hello, *c);
  else
    printf("%s hasn't %c\n", hello, l);
  
  return 0;
}
