#ifndef DEFINE_TEST_HEADER
#define DEFINE_TEST_HEADER

#include <stdio.h>

/* Test expression and prints result on stdout */
#define TEST(expr) \
printf("%10s:%3d\033[1m TEST\033[0m %60s: %s\033[0m\n",\
__FILE__, __LINE__, (#expr), (expr) ? "\033[32mPASS" : "\033[31mFAIL")

/* Test exp1==exp2 and exp2==exp1 */
#define BITEST(exp1,exp2) TEST((exp1)==(exp2)); TEST((exp2)==(exp1))

#endif
