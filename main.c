#include <stdio.h>
#include "strasm.h"

int main(int argc, const char **argv){
  const char *haystack = "Je suis une chaine de caracteres";
  const char *needle   = "chaine";
  char *found = strstrasm(haystack, needle);
  
  if (found) printf("Found \033[1m\"%s\"\033[0m in \033[1m\"%s\"\033[0m => \"%s\"\n", needle, haystack, found);
  else printf("Didn't find \033[1m\"%s\"\033[0m in \033[1m\"%s\"\033[0m\n", needle, haystack);
  
  return 0;
}
