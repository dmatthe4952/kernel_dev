[BITS 32]

section .asm

global print:function
global peachos_getkey:function
global peachos_malloc:function
global peachos_free:function
global peachos_putchar:function
global peachos_process_load_start:function
global peachos_process_get_arguments:function
global peachos_system:function

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

;void peachos_process_load_start(const char* filename);
peachos_process_load_start:
    push ebp
    mov ebp, esp
    mov eax, 6 ; Command 6 (process_load_start)
    push dword[ebp+8] ; variable filename
    int 0x80
    add esp, 4
    pop ebp
    ret

;int peachos_system(struct command_argument* arguments);
peachos_system:
    push ebp
    mov ebp, esp
    mov eax, 7 ; Command 7 system command
    push dword[ebp+8]
    int 0x80
    add esp, 4
    pop ebp
    ret

; void* peachos_process_get_arguments(struct process_arguments* arguments)
peachos_process_get_arguments:
    push ebp
    mov ebp, esp
    mov eax, 8 ;Command 8 process_get_arguments
    push dword[ebp+8] ; variable arguments
    int 0x80
    add esp, 4
    pop ebp
    ret

