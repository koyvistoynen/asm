; суммирование двух чисел

section .text
    global _start

_start:
    mov eax, '3'
    sub eax, '0'

    mov ebx, '4'
    sub ebx, '0'

    add eax, ebx
    add eax, '0'

    mov [sum], eax
    mov ecx, message
    mov edx, len
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, sum
    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
    message db "Сумма чисел: "
    len equ $ - message

section .bss
sum resb 1