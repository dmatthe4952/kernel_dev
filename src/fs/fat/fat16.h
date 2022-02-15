#ifndef FAT16_H
#define FAT16_H
#include "file.h"
#include <stdint.h>

struct filesystem* fat16_init();
int fat16_sector_to_absolute(struct disk* disk, int sector);


#endif
