#include "strasm.h"
#include "test.h"

#include <string.h>

#define STRSIZE 40

static const char *hello    = "Hello ";
static const char *world    = "world !";
static const char *animals  = "Pig, Duck, Horse, Turtle, Bear";
static const char *zx       = "zx";

int main(int argc, const char **argv){
  char str[STRSIZE];
  
  memset(str, 0, STRSIZE);
  
  BITEST(strlenasm(str), 0);
  BITEST(strlenasm(animals), strlen(animals));
  
  /* Verification de strcpyasm */
  strcpyasm(str, hello);
  BITEST(strlenasm(str), strlenasm(hello));
  
  BITEST(strcmp(str, hello), strcmpasm(str, hello));
  BITEST(strcmpasm(str, hello), strcmp(str, hello));
  
  strcatasm(str, world);
  BITEST(strlenasm(str), strlenasm(hello)+strlenasm(world));
  
  BITEST(strstrasm(str, world), strstr(str, world));
  BITEST(strstrasm(str, "haha"), strstr(str, "haha"));
  BITEST(strstrasm(str, ""), strstr(str, ""));
  
  BITEST(strchrasm(animals, 'D'), strchr(animals, 'D'));
  BITEST(strchrasm(animals, 'D'), strstrasm(animals, "Duck"));
  BITEST(strchrasm(animals, 'D'), strstr(animals, "Duck"));
  BITEST(strchrasm(animals, 'X'), NULL);
  
  BITEST(strrchrasm(animals, 'T'), strrchr(animals, 'T'));
  BITEST(strrchrasm(animals, 'T'), strstrasm(animals, "Turtle"));
  BITEST(strrchrasm(animals, 'X'), NULL);
  
#if defined(_DARWIN_C_SOURCE)
  BITEST(strnstrasm(animals, "Duck", 3), strnstr(animals, "Duck", 3));
#endif
  
  BITEST(strpbrkasm(animals, world), strpbrk(animals, world));
  BITEST(strpbrkasm(animals, zx), strpbrk(animals, zx));
  BITEST(strpbrkasm(animals, ""), strpbrk(animals, ""));
  
  memset(str, 0, STRSIZE);
  BITEST(strlenasm(str), 0);
  
  strncpyasm(str, animals, 10);
  BITEST(strlenasm(str), 10);
  
  strncat(str, hello, 2);
  BITEST(strlenasm(str), 12);
  
  return 0;
}
