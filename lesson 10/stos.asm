; копирование элемента данных из регистров AL(STOSB),
; AX(STOSW) или EAX(STOSD) в строку назначения

section .text
    global _start

_start:
    mov ecx, len
    mov esi, string1
    mov edi, string2

; конвертируем строки из верхнего регистра в нижий регистр
loop_here:
    lodsb
    or al, 20h
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
string1 db 'HELLO, WORLD', 0    ; источник
len equ $ - string1

section .bss
string2 resb 20                 ; назначение