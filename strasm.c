#include "strasm.h"
#include <stdlib.h>

char *strdupasm(const char *src){
  unsigned int len = strlenasm(src);
  char *res = malloc((len+1)*sizeof(char));
  if (! res) return NULL;
  strcpyasm(res, src);
  return res;
}
