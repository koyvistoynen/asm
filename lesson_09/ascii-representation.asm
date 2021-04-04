; обработка чисел в ascii

section .text
    global _start

_start:
    sub ah, ah
    mov al, '8'
    sub al, '4'
    aas                 ; настроить ascii-представление после вычитания
    or al, 30h
    mov [res], ax

    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 1
    mov ecx, res
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
msg db 'The result is:',0xa
len equ $ - msg
section .bss
res resb 1