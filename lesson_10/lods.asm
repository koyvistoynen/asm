; перемещение оригинальной строки password в память
; сдвигаем каждую букву алфавита на одну букву

section .text
    global _start

_start:
    mov ecx, len
    mov esi, string1
    mov edi, string2

loop_here:
    lodsb
    add al, 01
    stosb
    loop loop_here
    cld
    rep movsb

    mov edx, 20
    mov ecx, string2
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
string1 db 'password', 0
len equ $ - string1

section .bss
string2 resb 10