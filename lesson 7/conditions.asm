section .text
    global _start

_start:
    mov ecx, [number_1]         ; инициализация регистра ecx значением number_1
    cmp ecx, [number_2]         ; сравниваем ecx с number_2
    jg check_third_number       ; прыжок на chech_third_number
    mov ecx, [number_2]         ; инициализация регистра ecx значением number_1

check_third_number:
    cmp ecx, [number_3]         ; сравниваем значение из регистра ecx с значением number_3
    jg _exit                    ; прыжок на _exit
    mov ecx, [number_3]         ; инициализация регистра ecx значением number_3

_exit:
    mov [large], ecx
    mov ecx, message
    mov edx, len
    mov ebx, 1                  ; файловый дескриптор stdout
    mov eax, 4                  ; системный вызов sys_write
    int 0x80                    ; вызываем ядра

    mov ecx, large
    mov edx, 2
    mov ebx, 1                  ; файловый дескриптор stdout
    mov eax, 4                  ; системный вызов sys_write
    int 0x80

    mov eax, 1
    int 0x80                    ; вызываем ядра

section .data

    message db "Самое большее число является: ", 0xA,0xD
    len equ $ - message
    number_1 dd '69'
    number_2 dd '22'
    number_3 dd '79'

segment .bss
    large resb 2