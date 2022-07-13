/**
 * Brain Fuck Compiler.
 * nonporia, Jul 10.
 * **/
#include "gen.hh"

namespace gen_prgm
{
    /**
     * sfile     : Assembly file.
     * sections  : Basically all main function and the posibles loops.
     * cuSection : Current section.
     * cuIdxMem  : It decreases (<) or increases (>) into the memories.
     * rbp_r     : Current value of rbp register.
     * **/
    FILE* sfile;
    std::vector<SECTION> sections { sct_makemainsec() };
    std::size_t cuSection = 0;
    unsigned int cuIdxMem = 0;
    unsigned int rbp_r = 4;
}

namespace gen_asm
{
    void newmem ()
    {
        gen_prgm::sections.at(0).body += "\tsubq    $4, %rsp\n";
        gen_prgm::sections.at(0).body += "\tmovl    $0, -" + std::to_string(gen_prgm::rbp_r) + "(%rbp)\n";
        gen_prgm::rbp_r += 4;
        gen_prgm::cuIdxMem += 4;
    }
    void inCuMem (std::string *body)
    {
        (*body) += "\tincl    -" + std::to_string(gen_prgm::cuIdxMem) + "(%rbp)\n";
    }
    void deCuMem (std::string *body)
    {
        (*body) += "\tdecl    -" + std::to_string(gen_prgm::cuIdxMem) + "(%rbp)\n";
    }
    void ptCuMem (std::string *body)
    {
        (*body) += "\tmovl    -" + std::to_string(gen_prgm::cuIdxMem) + "(%rbp), %edi\n"
                   "\tcall    putchar@PLT\n"
                   "\tmovl    $0, %eax\n";
    }
}

void gen_start ()
{
    gen_prgm::sections.push_back( sct_makesection() );
    gen_prgm::cuSection++;
    gen_getinstr('>');
}

void gen_writecode ()
{
    gen_prgm::sfile = fopen("sfile.s", "w");
    for ( SECTION sec : gen_prgm::sections ) {
        fprintf(gen_prgm::sfile, sec.temp.c_str(), sec.body.c_str());
    }
    fclose(gen_prgm::sfile);
}

void gen_getinstr (const char &instr)
{
    std::string* cuBody = &gen_prgm::sections.at( gen_prgm::cuSection ).body;
    if ( instr == '+' ) { gen_asm::inCuMem(cuBody); }
    if ( instr == '-' ) { gen_asm::deCuMem(cuBody); }
    if ( instr == '.' ) { gen_asm::ptCuMem(cuBody); }
    if ( instr == '>' ) { gen_asm::newmem(); }

    if ( instr == '<' ) { printf("DEC PTR.\n"); }
    if ( instr == ',' ) { printf("INPUT.\n"); }
    if ( instr == '[' ) { printf("INIT LOOP.\n"); }
    if ( instr == ']' ) { printf("END LOOP.\n"); }
}
