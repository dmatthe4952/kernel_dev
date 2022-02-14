[BITS 32]
global _start
global kernel_registers

extern kernel_main

CODE_SEG equ 0x08
DATA_SEG equ 0x10

_start:
    mov ax, DATA_SEG
    mov ds, ax
    mov es, ax
    mov fs, ax
    mov gs, ax
    mov ss, ax
    mov ebp, 0x00200000
    mov esp, ebp

    ; A20 line allows access to memory above 1Mb
    in al, 0x92
    or al, 2
    out 0x92, al

    ;Remap the master Programmable Interrupt Controller due to exception addressing
    mov al, 00010001b ;sets to initialization mode
    out 0x20, al ; Tell the master

    mov al, 0x20 ; Interrupt 0x20 is where master ISR should start
    out 0x21, al

    mov al, 00000001b
    out 0x21, al

    ;End of remap of the master PIC

    call kernel_main

    jmp $

kernel_registers:
    mov ax, 0x10
    mov ds, ax
    mov es, ax
    mov gs, ax
    mov fs, ax
    ret

times 512- ($ - $$) db 0  ; for alignment in binary 

