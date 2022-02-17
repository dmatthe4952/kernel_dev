#ifndef KEYBOARD_CLASSIC_H
#define KEYBOARD_CLASSIC_H

#define PS2_PORT 0x64
#define PS2_PORT_ENABLE 0xAE

#define CLASSIC_KEYBOARD_KEY_RELEASED 0x80
#define ISR_KEYBOARD_INTERRUPT 0x21
#define KEYBOARD_INPUT_PORT 0x60

struct keyboard* classic_init();

#endif
