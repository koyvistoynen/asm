; Выводим 9 звёзд (*)

section .text
    global _start 

_start:             ; указываем точку входа
    mov edx, len    ; длина сообщения
    mov ecx, msg    ; сообщение
    mov ebx, 1      ; файловый дескриптор (stdout)
    mov eax, 4      ; номер системного вызова (sys_write)
    int 0x80        ; вызов ядра

    mov edx, 9      ; длина сообщения
    mov ecx, msg_stars  ; сообщение
    mov ebx, 1      ; файловый дескриптор (stdout)
    mov eax, 4      ; номер системного вызова (sys_write)
    int 0x80        ; вызов ядра

    mov eax, 1      ; номер системного вызова (sys_exit)
    int 0x80        ; вызов ядра

section .data
msg db 'Output 9 stars', 0xa    ; вывод сообщения 'Output 9 stars'
len equ $ - msg                 ; длина сообщения
msg_stars times 9 db '*'        ; вывод *********