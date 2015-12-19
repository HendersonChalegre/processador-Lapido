#include <stdio.h>
#include <stdlib.h>

int PCSrc = 0;                      // Sinal de controle
int programCounter = 0;             // PC
int instructionMemory[10][32];      // Mem�ria de instru��es

// Carrega instru��es do arquivo para mem�ria de instru��es
void loadInstructionsOnMemory() {
    FILE *fp;
    char buff[255];
    int counter = 0;

    fp = fopen("input.txt", "r");
    
    while(fscanf(fp, "%s", buff) != EOF) {
        strncpy(instructionMemory[counter], buff, 32);
        printf("%s\n", instructionMemory[counter]);
        counter++;
    }
    
    fclose(fp);
}

// Executa IF
char * doInstructionFetch() {
    char *instruction = instructionMemory[programCounter];
    
    //printf("%s\n", instruction);
    if(PCSrc==0) {
        programCounter = programCounter + 4;
    } else {
        // programCounter = sa�da da ULA
    }
    return instruction;
}

int main(int argc, char *argv[])
{
    loadInstructionsOnMemory();
    system("PAUSE");
    char *instruction = doInstructionFetch();
    printf("%s\n", instruction);
    system("PAUSE");
    return 0;
}
