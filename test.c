#include <stdio.h>
#include "strasm.h"
#include <string.h>
#include <stdarg.h>

#define TEST(expr) \
printf("%10s:%3d\033[1m TEST\033[0m %60s: %s\033[0m\n",\
__FILE__, __LINE__, #expr, (expr) ? "\033[32mpass" : "\033[31mfail")
#define STRSIZE 40

static const char *hello = "Hello ";
static const char *world = "world !";
static const char *animals = "Pig, Duck, Horse, Turtle, Bear";
static const char *sentence = "Yesterday, James went to the pub riding a horse.";

int main(int argc, const char **argv){
  char str[STRSIZE];
  memset(str, 0, STRSIZE);
  
  /* Verification de strlen <=> strlenasm */
  TEST(strlenasm(sentence) == strlen(sentence));
  
  /* Verification de strcpyasm */
  strcpyasm(str, hello);
  TEST(strlenasm(str) == strlenasm(hello));
  
  TEST(strcmp(str, hello) == strcmpasm(str, hello));
  
  strcatasm(str, world);
  TEST(strlenasm(str) == strlenasm(hello)+strlenasm(world));
  
  TEST(strstrasm(str, world) == strstr(str, world));
  TEST(strstrasm(str, "haha") == strstr(str, "haha"));
  TEST(strstrasm(str, "") == strstr(str, ""));
  
  return 0;
}
