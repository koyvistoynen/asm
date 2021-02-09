section .data                       ; секция данных
    userMsg db 'Введите число: '    ; сообщение с просьбой ввести число
    lenUserMsg equ $ - userMsg      ; длина сообщения
    dispMsg db 'Вы ввели: '         ; сообщение с текстом вывода числа
    lenDispMsg equ $ - dispMsg      ; длина сообщения

section .bss                        ; секция неинициализированных данных
    num resb 5

section .text                       ; секция кода
    global _start

_start:                             ; запрашивается пользовательский ввод
    mov eax, 4                      ; номер системного вызова (sys_write)
    mov ebx, 1                      ; дескриптор файла (stdout)
    mov ecx, userMsg
    mov edx, lenUserMsg
    int 0x80

    ; Считываем и сохраняем пользовательский ввод
    mov eax, 3
    mov ebx, 2
    mov ecx, num
    mov edx, 5                      ; 5 байт информации
    int 0x80

    ; Выводим сообщение 'Вы ввели: ' 
    mov eax, 4
    mov ebx, 1
    mov ecx, dispMsg
    mov edx, lenDispMsg
    int 0x80

    ; Выводим введенное число
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 0x80

    ; Код выхода
    mov eax, 1
    mov ebx, 0
    int 0x80
