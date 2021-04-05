; выделение 16 Kb памяти с помощью системного вызова sys_brk

section .text
    global _start

_start:

    mov eax, 45         ; вызов sys_brk()
    xor ebx, ebx
    int 0x80

    add eax, 16384      ; количество байтов для резервирования (16Kb)
    mov ebx, eax
    mov eax, 45         ; вызов sys_brk()
    int 0x80

    cmp eax, 0
    jl exit             ; выполняем exit если возникнет ошибка
    mov edi, eax        ; edi - наибольший доступный адрес
    sub edi, 4          ; указываем на последний dword
    mov ecx, 4096       ; количество выделенных значений типа dword
    xor eax, eax        ; очищаем регистр EAX
    std                 ; назад
    rep stosd           ; повторяем для всей выделенной области
    cld                 ; помещаем флаг DF в обычное положение

    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, len
    int 0x80

exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80

section .data
message db 'Выделение 16 Kb памяти', 10
len equ $ - message