CC = gcc
CFLAGS = -std=c99 -pedantic -Wall -Wextra -Wmissing-prototypes -Wunreachable-code
EXEC = test
OBJS = strasm.o strcat.o strchr.o strcmp.o strcpy.o strlen.o strncat.o strncmp.o strncpy.o strnstr.o strpbrk.o strrchr.o strstr.o

ifeq ($(shell uname -s),Darwin)
	CC += -arch i386
endif

all : ${EXEC}

clean : 
	rm -f ${OBJS} test.o test.s strasm.s

clobber : clean
	rm -f ${EXEC}

%.o : %.s
	${CC} -c -o $@ $<

%.s : %.c
	${CC} ${CFLAGS} -S -o $@ $<

${EXEC} : test.o ${OBJS}
	${CC} -o $@ $^

test.o : test.h
