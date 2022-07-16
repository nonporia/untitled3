/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#include "gen.hh"

namespace g_prgm
{
    std::vector<SECTION> sections { sct_makemainsec() };
    FILE* outf;
}

namespace g_data
{
    int maxvlue_rbp;
    int current_rbp;
    int incdec_count;
    int cu_section;

    char prev_instr;
}

namespace g_code
{
    void inc_dec (std::string* cBody)
    {
        (*cBody) += "\taddl    $" + std::to_string(g_data::incdec_count) + ", -" + std::to_string(g_data::current_rbp) + "(%rbp)\n";
        g_data::incdec_count = 0;
    }

    void print_cmem (std::string* cBody)
    {
        (*cBody) += "\tmovl    -" + std::to_string(g_data::current_rbp) + "(%rbp), %edi\n";
        (*cBody) += "\tcall    putchar@PLT\n";
        (*cBody) += "\tmovl    $0, %eax\n";
    }

    void makemem ()
    {
        if ( (g_data::current_rbp + 4) != g_data::maxvlue_rbp ) {
            g_data::current_rbp += 4;
            return;
        }

        std::string* mainBody = &g_prgm::sections.at(0).body;
        (*mainBody) += "\tsubq    $4, %rsp\n";
        (*mainBody) += "\tmovl    $0, -" + std::to_string(g_data::maxvlue_rbp) + "(%rbp)\n";
        g_data::maxvlue_rbp += 4;
        g_data::current_rbp += 4;
    }

    void getinput (std::string* cBody)
    {
        (*cBody) += "\tleaq    -" + std::to_string(g_data::current_rbp) + "(%rbp), %rsi\n";
        (*cBody) += "\tleaq    .input(%rip), %rdi\n";
        (*cBody) += "\tmovl    $0, %eax\n";
        (*cBody) += "\tcall    __isoc99_scanf@PLT\n";
    }
}

void gen_start ()
{
    g_prgm::outf = fopen("outf.s", "w");
    g_data::maxvlue_rbp  = 4;  /** Simulates be the rbp assembly register. ================================ **/
    g_data::current_rbp  = 0;  /** Points to the current memory (Brain Fuck). ============================= **/
    g_data::incdec_count = 0;  /** Counts the value of all INC and DEC operatios that has been done so far. **/
    g_data::prev_instr   = 0;  /** Previous instruction. ================================================== **/
    g_data::cu_section   = 1;  /** Index to the current section. ========================================== **/

    g_prgm::sections.push_back( sct_makesection() );
    gen_getinstr('>');
}

void gen_getinstr (const char &instr)
{
    switch ( instr ) {
        case 43: case 44: case 45: case 46: case 60: case 62: case 91:
        case 93: {
            goto IS_INSTRUCTION;
        }
        default: { return; }
    }

    IS_INSTRUCTION:
    std::string *cBody = &g_prgm::sections.at( g_data::cu_section ).body;

    if ( instr == 43 ) { g_data::incdec_count++; }
    else if ( instr == 45 ) { g_data::incdec_count--; }
    else if ( g_data::prev_instr == 43 || g_data::prev_instr == 45 ) { g_code::inc_dec(cBody); }

    if ( instr == 46 ) { g_code::print_cmem(cBody); }
    if ( instr == 62 ) { g_code::makemem(); }
    if ( instr == 60 ) {
        if ( g_data::current_rbp >= 8 ) {
            g_data::current_rbp -= 4;
        }
    }
    if ( instr == 44 ) { g_code::getinput(cBody); }

    g_data::prev_instr = instr;
}

void gen_writecode ()
{
    for ( SECTION stn : g_prgm::sections ) {
        fprintf(g_prgm::outf, stn.temp.c_str(), stn.body.c_str());
    }
    fclose(g_prgm::outf);
}
