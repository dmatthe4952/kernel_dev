#include "peachos.h"

int peachos_getkeyblock()
{
    int val = 0;
    do
    {
        val = peachos_getkey();
    }
    while (val == 0); 
    return val; 
}

void peachos_terminal_readline(char* out, int max, bool output_whild_typing)
{
    int i = 0;
    for (i = 0; i < max -1; i++)
    {
        char key = peachos_getkeyblock();

        if (key == 13)
        {
            break;
        }

        if(output_whild_typing)
        {
            peachos_putchar(key);
        }

        if(key == 0x08 && i >= 1)
        {
            out[i - 1] = 0x00;
            i -= 2;
            continue;
        }

        out[i] = key;
    }
    out[i] = 0x00;
}
