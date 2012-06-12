#include <stdlib.h>
#include <stdio.h>

char *MY_strstr(char *haystack, char *needle);

int main(int argc, const char **argv){
  puts("Hello !");
  char *needle = "aab";
  char *haystack = "aaab";
  char *found = MY_strstr(haystack, needle);

  if (found) printf("Found: %s\n", found);
  else puts("Not found !");
  
  return 0;
}

char *MY_strstr(char *haystack, char *needle){
  char *found = NULL;
  char *cur = NULL;
  
  if (*needle == '\0') return haystack;

  while (*haystack != '\0'){
    while (*haystack != *needle && *haystack != '\0') haystack++;
    
    if (*haystack == *needle){
      found = haystack;
      cur   = needle;
      while (*cur != '\0' && *haystack == *cur){
        cur++;
        haystack++;
      }
      if (*cur == '\0') return found;
      else haystack = found+1;
    }
  }
  
  return NULL;
}
