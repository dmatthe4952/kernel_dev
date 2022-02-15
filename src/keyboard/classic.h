#ifndef KEYBOARD_CLASSIC_H
#define KEYBOARD_CLASSIC_H

#define PS2_PORT 0x64
#define PS2_PORT_ENABLE 0xAE

struct keyboard* classic_init();

#endif
