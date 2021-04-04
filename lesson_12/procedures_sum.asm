; процедура складывающая переменные из регистров ECX и EDX
; и возвращаем результат в EAX

section .text
    global _start

_start:
    mov ecx, '2'
    sub ecx, '0'
    mov edx, '5'
    sub ecx, '0'

    call sum            ; вызываем процедуру sum
    mov [res], eax
    mov ecx, message
    mov edx, len
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov ecx, res
    mov edx, 1
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

sum:
    mov eax, ecx
    add eax, edx
    add eax, '0'
    ret

section .data
message db "Сумма равна: ", 0xa,0xd
len equ $ - message

section .bss
res resb 1