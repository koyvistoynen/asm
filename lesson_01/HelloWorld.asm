; Выводим сообщение 'Hello World!'

section .text
    global _start   ; требуется для линкера

_start:             ; сообщает линкеру стартовую точку
    mov edx, len    ; длина строки
    mov ecx, msg    ; строка
    mov ebx, 1      ; дескриптор файла (stdout)
    mov eax, 4      ; номер системного вызова (sys_write)
    int 0x80        ; вызов ядра

    mov eax, 1      ; номер системного вызова (sys_exit)
    int 0x80        ; вызов ядра

section .data
msg db 'Hello World!', 0xa  ; выводим строку 'Hello World'
len equ $ - msg     ; длина строки