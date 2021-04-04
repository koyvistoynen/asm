; сравнение двух строк

section .text
    global _start

_start:
    mov esi, string1
    mov edi, string2
    mov ecx, lens2
    cld
    repe cmpsb
    jecxz equal     ; выполняем прыжок когда ecx равен 0

; если не равно 0, то выполняем следующий код
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_neq
    mov edx, len_neq
    int 0x80
    jmp exit

equal:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_eq
    mov edx, len_eq
    int 0x80

exit:
    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
string1 db 'Hello, world!', 0
lens1 equ $ - string1

string2 db 'No Hello, world!', 0
lens2 equ $ - string2

msg_eq db 'Strings are equal!', 0xa
len_eq equ $ - msg_eq

msg_neq db 'Strings are not equal!', 0xa
len_neq equ $ - msg_neq