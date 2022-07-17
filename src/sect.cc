/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#include "sect.hh"
unsigned nsections = 0;


//idxloop = 4
//
//main:
// ...
//SEC0:
// ...
//


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

SECTION sct_makemainsec ()
{
    SECTION mainSec;
    mainSec.temp = ".text\n"
                   ".globl main\n"
                   ".type main, @function\n"
                   ".input:\n"
                   "\t.string \"%%d\"\n"
                   "\t.text\n"
                   "main:\n"
                   "\tpushq   %rbp\n"
                   "\tmovq    %rsp, %rbp\n"
                   "%s"
                   "\tcall    SEC0\n"
                   "\tleave\n"
                   "\tret\n";
    mainSec.body = "";
    return mainSec;
}

SECTION sct_makeloopsec (unsigned int idxRbp, std::size_t prevS)
{
    SECTION loopsec = sct_makesection();
    loopsec.temp.insert(loopsec.temp.size() - 5, "\tcall    LOOP" + std::to_string(loopsec.numsect) + "\n");
    loopsec.temp += "LOOP" + std::to_string(loopsec.numsect) + ":\n"
                    "\tcmpl    $0, -" + std::to_string(idxRbp) + "(%rbp)\n"
                    "\tjg      SEC" + std::to_string(loopsec.numsect) + "\n"
                    "\tret\n";
    loopsec.prevSect = prevS;
    return loopsec;
}
