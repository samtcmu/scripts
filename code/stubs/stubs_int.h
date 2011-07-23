/**
 * @author Sam Tetruashvili (stetruas)
 * @file stubs_int.h
 * @date date created: Sun Mar  8 12:04:55 EDT 2009
 * @brief The internal header file for the Stubs library.
 * 
 * @date last modified: Sun Mar  8 12:04:55 EDT 2009
 * 
 * @bug No known bugs.
 */

#ifndef STUBS_INT_H
#define STUBS_INT_H

#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

#define STUBS_MAX_LINE          1024

#define STUBS_FN_FORMAT         "/**\n" \
                                " * @brief\n" \
                                " * \n" \
                                " * TODO <brief description>\n" \
                                " * \n" \
                                "%s" \
                                " * @return TODO\n" \
                                " * \n" \
                                " * @bug No known bugs.\n" \
                                " */ \n" \
                                "%s %s%s {\n" \
                                "\n" \
                                "    return %s;\n" \
                                "}\n" \
                                "\n" \

/* Static function prototypes. */
static int process_fn(char *fn);

#endif /* No code after this line. */

