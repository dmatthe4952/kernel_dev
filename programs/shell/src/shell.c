#include "shell.h"
#include "peachos.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    print("PeachOS v1.0.0\n");
    while(1) 
    {
        print("> ");
        char buf[1024];
        peachos_terminal_readline(buf, sizeof(buf), true);
        print("\n");
        peachos_system_run(buf);
        print("\n");

    }
    return 0;
}
