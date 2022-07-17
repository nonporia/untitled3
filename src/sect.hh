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
    std::size_t prevSect;
};

SECTION sct_makesection ();
SECTION sct_makemainsec ();
SECTION sct_makeloopsec (unsigned int idxRbp, std::size_t prevS);

#endif
