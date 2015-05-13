SRCFILES =$(shell ls *.c)
TARGETS = $(SRCFILES:%.c=%$(EXEEXT))

EXEEXT= 

CC = gcc
CFLAGS = -Wall -g -W -Wextra -pedantic -std=gnu99 

.PHONY: all clean

all: $(TARGETS)

clean:
	rm -f $(TARGETS)

%$(EXEEXT): %.c
	$(CC) $(CFLAGS) -o $@ $<