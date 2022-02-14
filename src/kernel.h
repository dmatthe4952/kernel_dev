#ifndef KERNEL_H
#define KERNEL_H

#include <stdint.h>

#define VGA_WIDTH 80
#define VGA_HEIGHT 20

void kernel_main();
void kernel_page();
void kernel_registers();
void print(const char *s);
void panic(const char* msg);

#define ISERR(value) ((int) value < 0)
#define ERROR(value) (void*) value
#define ERROR_I(value) (int) value

#endif
