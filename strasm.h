#ifndef DEFINE_STRASM_HEADER
#define DEFINE_STRASM_HEADER

/*
 * All those functions conform to their manual page without 'asm' suffix
 */

extern unsigned int strlenasm(const char *str);

extern char *strcpyasm(char *dest, const char *src);

extern char *strncpyasm(char *dest, const char *src, unsigned int n);

extern char *strdupasm(const char *src);

extern char *strcatasm(char *dest, const char *src);

extern char *strncatasm(char *dest, const char *src, unsigned int n);

extern int strcmpasm(const char *s1, const char *s2);

extern int strncmpasm(const char *s1, const char *s2, unsigned int n);

extern char *strchrasm(const char *haystack, char needle);

extern char *strrchrasm(const char *haystack, char needle);

extern char *strpbrkasm(const char *haystack, const char *needles);

extern char *strstrasm(const char *haystack, const char *needle);

extern char *strnstrasm(const char *haystack, const char *needle, unsigned int n);

#endif
