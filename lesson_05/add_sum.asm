; ввод двух чисел и их суммирование

SYS_EXIT    equ 1
SYS_READ    equ 3
SYS_WRITE   equ 4
STDIN       equ 0
STDOUT      equ 1

section .data
    message1 db "Введите первое число: ", 0xa
    len1 equ $ - message1

    message2 db "Введите второе число: ", 0xa
    len2 equ $ - message2

    message3 db "Сумма первого и второго числа = ", 
    len3 equ $ - message3

section .bss
    number1 resb 2
    number2 resb 2
    res resb 1

section .text
    global _start

_start:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message1
    mov edx, len1
    int 0x80

    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, number1
    mov edx, 2
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message2
    mov edx, len2
    int 0x80

    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, number2
    mov edx, 2
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message3
    mov edx, len3
    int 0x80

; перемещаем первое число (number 1) в регистр EAX, а второе число (number 2) в регистр EBX
; и вычитаем '0' для конвертации в десятичное значение

    mov eax, [number1]
    sub eax, '0'

    mov ebx, [number2]
    sub ebx, '0'

    add eax, ebx ; складывам значения в регистрах

    add eax, '0' ; добавляем '0' для конвертации из десятичного значения в ASCII

    mov [res], eax ; сохраняем сумму в ячейке памяти res

; выводим сумму
    
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, res
    mov edx, 1
    int 0x80

exit:
    mov eax, SYS_EXIT
    xor ebx, ebx
    int 0x80