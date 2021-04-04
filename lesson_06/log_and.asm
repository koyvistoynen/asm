; вывод сообщения о чётности\нечётности числа с регистра AX

section .text
    global _start

_start:
    mov ax, 9h          ; записываем 9 в регистр AX
    and ax, 1           ; выполняем операцию AND с AX
    jz evnn
    mov eax, 4
    mov ebx, 1
    mov ecx, odd_msg
    mov edx, len2
    int 0x80
    jmp outprog

evnn:
    mov ah, 09h
    mov eax, 4
    mov ebx, 1
    mov ecx, event_msg
    mov edx, len1
    int 0x80

outprog:
    mov eax, 1
    int 0x80

section .data
even_msg db 'Чётное число'
len1 equ $ - event_msg

odd_msg db 'Нечётное число'
len2 equ $ - odd_msg