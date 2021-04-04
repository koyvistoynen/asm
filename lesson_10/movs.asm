; копирование элемента данных из исходной строки
; в строку назначения

section .text
    global _start

_start:
    mov ecx, len
    mov esi, string1
    mov edi, string2
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
string1 db 'Hello, world!',0
len equ $ - string1

section .bss
string2 resb 20