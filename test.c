#include <stdio.h>
#include "strasm.h"
#include <string.h>

#define LIMIT 5
#define unless(expr) if (! (expr))
#define until(expr) while (! (expr))

int main(int argc, const char **argv){
  puts("Hello !");
  const char *haystack = "abcd1234efgh5678";
  const char *needle   = "";
  char *found = NULL;
  unsigned int i = 0;
  
  until (found || i == 16){
    printf("Searching \"%s\" in [%u] \"%s\" ... ", needle, i, haystack);
    fflush(stdout);
    found = strnstrasm(haystack, needle, i);
    if (found) puts(found);
    else puts("Not found");
    i++;
  }
  
  return 0;
}
