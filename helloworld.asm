extern printf

section .data
    msg db 'Hello, world!', 0xa, 0xd
    len equ $ - msg
    
section .text
    global main

main:
    mov eax, 4    ;sys_write
    mov ebx, 1    ;stdout
    mov ecx, msg
    mov edx, len
    
    int 0x80      ;processor interruption
    
    mov eax, 1    ;sys_exit
    mov ebx, 0    ;
    
    int 0x80      ;processor interruption
