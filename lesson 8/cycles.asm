; вывод чисел от 1 до 9

section .text
    global _start

_start:
    mov ecx, 10
    mov eax, '1'

loop_1:
    mov [number], eax
    mov eax, 4
    mov ebx, 1
    push ecx

    mov ecx, number
    mov edx, 1
    int 0x80

    mov eax, [number]
    sub eax, '0'
    inc eax
    add eax, '0'
    pop ecx
    loop loop_1

    mov eax, 1
    int 0x80

section .bss
number resb 1