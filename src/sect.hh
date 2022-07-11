/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#ifndef SECT_HH
#define SECT_HH
#include <string>

struct SECTION
{
    std::string temp;
    std::string body;
    unsigned numsect;
};

SECTION sct_makesection ();

#endif
