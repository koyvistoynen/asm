; расчёт факториала числа 2
section .text
    global _start

_start:
    mov bx, 2       ; вычисление факториала 2
    call r_fact
    add ax, 30h
    mov [fact], ax

    mov edx, len
    mov ecx, message
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 1
    mov ecx, fact
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

r_fact:
    cmp bl, 1
    jg do_calc
    mov ax, 1
    ret

do_calc:
    dec bl
    call r_fact
    inc bl
    mul bl          ; ax = al * bl
    ret

section .data
message db 'Факториал числа 2 равен: ', 0xA,0xD
len equ $ - message

section .bss
fact resb 1