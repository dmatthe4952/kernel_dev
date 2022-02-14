[BITS 32]

section .asm

global _start

_start:
    mov eax, 0
    push 20
    push 30
    mov eax, 0 ;Command0_sum
    int 0x80
    add esp, 8

    jmp $
