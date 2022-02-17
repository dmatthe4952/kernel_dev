#ifndef ELFLOADER_H
#define ELFLOADER_H

#include <stdint.h>
#include <stddef.h>
#include "elf.h"
#include "config.h"

struct elf_file
{
    char filename[PEACHOS_MAX_PATH];

    int in_memory_size;

    // The physical memory address where this file is loaded
    void* elf_memory;

    // The virtual memory address for this binary
    void* virtual_base_address;

    // The end address of the virtual memory for this binary
    void* virtual_end_address;

    // The physical base address
    void* physical_base_address;

    // The end of the physical address
    void* physical_end_address;

};

#endif
