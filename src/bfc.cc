/**
 * Brain Fuck Compiler, main file.
 * nonporia, Jul 10.
 * **/
#include "gen.hh"

void read (FILE* bFile)
{
    char instr;
    while ( (instr = fgetc(bFile)) != EOF ) {
        gen_getinstr(instr);
    }
}

int main (int argc, char* argv[])
{
    if ( argc != 2 ) {
        printf("No file given as argument.\n");
        return 1;
    }

    FILE* bFile = fopen(argv[1], "r");
    if ( !bFile ) {
        printf("File given as argument does not exist.\n");
        return 1;
    }

    read(bFile);
    fclose(bFile);
    return 0;
}
