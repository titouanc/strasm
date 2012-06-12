#include <stdio.h>
#include "strasm.h"
#include <string.h>

#define LIMIT 9
#define unless(expr) if (! (expr))

int main(int argc, const char **argv){
  puts("Hello !");
  const char *haystack = "abcd1234efgh5678";
  const char *needle   = "1234";
  char *found = strnstrasm(haystack, needle, LIMIT);
  char buffer[20] = {'\0'};
  
  unless (found) 
    printf("Didn't find \"%s\" in \"%s\"\n", needle, haystack);
  else {
    strncpyasm(buffer, found, LIMIT);
    printf("Found \"%s\" in \"%s\" => \"%s\"\n", needle, haystack, buffer);
  }
  
  return 0;
}
