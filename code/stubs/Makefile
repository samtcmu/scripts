# @author Sam Tetruashvili (samt@cmu.edu)
# @file Makefile
# @date date created: Sun Mar  8 12:08:20 EDT 2009
# @brief Handles the compilation of the Stubs library.

# @date last modified: Sun Mar  8 12:08:20 EDT 2009

CC = gcc
CFLAGS = -ansi -pedantic -Wall -Wextra
STUBS = stubs.c stubs_int.h

stubs: $(STUBS) 
	$(CC) $(CFLAGS) stubs.c -o stubs

clean:
	rm -r stubs

