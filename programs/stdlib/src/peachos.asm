[BITS 32]

section .asm

global print:function
global peachos_getkey:function
global peachos_malloc:function
global peachos_free:function
global peachos_putchar:function

;void print(const char* message)
print:
    push ebp
    mov ebp, esp
    mov eax, 1 ; Command print (prints the string)
    push dword[ebp+8] ; variable "message"
    int 0x80
    add esp, 4
    pop ebp
    ret

;int getkey()
peachos_getkey:
    push ebp
    mov ebp, esp 
    mov eax, 2  ; Command getkey (gets the key pressed)
    int 0x80
    pop ebp
    ret

;void putchar(char c)
peachos_putchar:
    push ebp
    mov ebp, esp
    mov eax, 3  ; command putchar
    push dword[ebp+8] ; variable c
    int 0x80
    add esp, 4
    pop ebp
    ret


;void* peachos_malloc(size_t size);
peachos_malloc:
    push ebp
    mov ebp, esp
    mov eax, 4 ; Commannd malloc (allocates size memory)
    push dword[ebp+8] ;variable size
    int 0x80
    add esp, 4
    pop ebp
    ret

;void peachos_free(void* ptr)
peachos_free:
    push ebp
    mov ebp, esp
    mov eax, 5 ; command 5 free (free the allocation)
    push dword[ebp+8] ;variable "ptr"
    int 0x80
    add esp, 4
    pop ebp
    ret
