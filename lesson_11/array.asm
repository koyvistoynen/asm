; складываем три элемента () массива
section .text
    global _start

_start:
    mov eax, 3          ; количество значений типа byte для сложения
    mov ebx, 0          ; ebx для хранения суммы
    mov ecx, x          ; ecx будет указывать на текущий элемент для выполнения сложения

top: add ebx, [ecx]
    add ecx, 1          ; перемещение указателя на следующий элемент
    dec eax             ; выполняем декремент счётчика
    jnz top             ; если счётчик не равен 0, то повторям цикл

done:
    add ebx, '0'
    mov [sum], ebx      ; сохраняем результат в переменной sum

display:
    mov edx, 1          ; длина сообщения
    mov ecx, sum        ; сообщение для вывода
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    int 0x80

section .data
global x
x:
    db 1
    db 2
    db 5

sum:
    db 0