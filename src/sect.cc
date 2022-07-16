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
                   "\tcall SEC0\n"
                   "\tleave\n"
                   "\tret\n";
    mainSec.body = "";
    return mainSec;
}
