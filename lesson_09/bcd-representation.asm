; сложение двух пятизначных чисел и вывод значений

section .text
    global _start

_start:

    mov esi, 4      ; указываем на крайнюю правую цифру
    mov ecx, 5      ; количество цифр
    clc

add_loop:
    mov al, [number1 + esi]
    adc al, [number2 + esi]
    aaa             ; настройка в ascii представлении после добавления
    pushf
    or al, 30h
    popf

    mov [sum + esi], al
    dec esi
    loop add_loop

    mov edx, len
    mov ecx, message
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 5
    mov ecx, sum
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
message db 'Сумма равна ='
len equ $ - message
number1 db '12345'
number2 db '23456'
sum db '     '