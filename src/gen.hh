/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#ifndef GEN_HH
#define GEN_HH
#include "sect.hh"
#include <iostream>
#include <vector>

void gen_makefile (char *filename);
void gen_witecode ();
void gen_getinstr (const char &instr);

#endif
