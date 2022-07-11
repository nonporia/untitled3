/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#include "sect.hh"
unsigned nsections = 0;

SECTION sct_makesection ()
{
    SECTION thsSec;
    thsSec.temp = "SEC" + std::to_string(nsections) + ":\n"
                  "%s"
                  "\tret\n";
    thsSec.body = "";
    thsSec.numsect = nsections;
    nsections++;
    return thsSec;
}
