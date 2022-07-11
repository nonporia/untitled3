/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#include "gen.hh"

namespace gen_utils
{
    FILE* sfile;
    std::vector<SECTION> sections;
    std::size_t cuSection = 0;
}

void gen_makefile (char *filename)
{
    gen_utils::sfile = fopen("sfile.s", "w");
    fprintf(gen_utils::sfile, "# %s has been compiled\n", filename);
    fprintf(gen_utils::sfile, ".text\n");
    fprintf(gen_utils::sfile, ".globl main\n");
    fprintf(gen_utils::sfile, ".type main, @function\n");
    fprintf(gen_utils::sfile, ".type main, @function\n");
    fprintf(gen_utils::sfile, "main:\n");
    fprintf(gen_utils::sfile, "\tpushq %%rbp\n");
    fprintf(gen_utils::sfile, "\tmovq %%rsp, %%rbp\n");
    fprintf(gen_utils::sfile, "\tcall SEC0\n");
    fprintf(gen_utils::sfile, "\tleave\n");
    fprintf(gen_utils::sfile, "\tret\n");

    gen_utils::sections.push_back(sct_makesection());
}

void gen_witecode ()
{
    for ( SECTION sec : gen_utils::sections ) {
        fprintf(gen_utils::sfile, sec.temp.c_str(), sec.body.c_str());
    }
    fclose(gen_utils::sfile);
}

void gen_getinstr (const char &instr)
{
    if ( instr == '>' ) { printf("INC PTR.\n"); }
    if ( instr == '<' ) { printf("DEC PTR.\n"); }
    if ( instr == '.' ) { printf("PRINT.\n"); }
    if ( instr == ',' ) { printf("INPUT.\n"); }
    if ( instr == '+' ) { printf("INC VALUE.\n"); }
    if ( instr == '-' ) { printf("DEC VALUE.\n"); }
    if ( instr == '[' ) { printf("INIT LOOP.\n"); }
    if ( instr == ']' ) { printf("END LOOP.\n"); }
}
