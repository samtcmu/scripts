/**
 * @author Sam Tetruashvili (stetruas)
 * @file stubs.c
 * @date date created: Sun Mar  8 11:57:24 EDT 2009
 * @brief This file parses the function prototypes in a C header file and 
 *        creates a skelton C implementatoin of the interface in the header
 *        file.
 * 
 * @date last modified: Sun Mar  8 12:59:50 EDT 2009
 * 
 * @bug We don't parse the parameter list at all.
 * @bug We only currently return 0, this should be able to be the success
 *      constant:of the library.
 */

#include "stubs_int.h"

/**
 * @brief The main function.
 */
int main(void) {
    char line[STUBS_MAX_LINE];

    /* Read each function prototype. */
    while (fgets(line, STUBS_MAX_LINE, stdin)) {
        assert(EXIT_SUCCESS == process_fn(line));
    }

    return EXIT_SUCCESS;
}

/**
 * @brief
 * 
 * This function processes a function prototypes into a minimal C
 * function That implements the prototype.
 * 
 * @param fn The function prototype to be processed.
 * @return EXIT_SUCCESS If fn is succesfully processed.
 * @return EXIT_FAILURE If fn is NULL.
 *
 * @bug We don't parse the parameter list at all.
 * @bug We only currently return 0, this should be able to be the success
 *      constant:of the library.
 */
static int process_fn(char *fn) {
    char **fn_info;
    int i;

    /* Check for NULL inputs. */
    if (!fn) {
        return EXIT_FAILURE;
    }

    /* Allocate space for string of information about the input function. */
    fn_info = (char **) malloc(sizeof(char *) * STUBS_MAX_LINE);
    assert(fn_info);

    /* Allocate space for the return type, function name, and arguments list. */
    for (i = 0; i < 3; ++i) {
        fn_info[i] = (char *) malloc(sizeof(char *) * STUBS_MAX_LINE);
        assert(fn_info[i]);
    }

    /* Get the return type and function name. */
    sscanf(fn, "%s %[^(] %[^;]", fn_info[0], fn_info[1], fn_info[2]);

    printf(STUBS_FN_FORMAT, "", fn_info[0], fn_info[1], fn_info[2], "0");

    return EXIT_SUCCESS;
}

