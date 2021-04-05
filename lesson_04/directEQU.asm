; Выводим строки текста
; "Hello man!"
; "Welcome to the world of, Nasm assebly proramming"

SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN   equ 0
STDOUT  equ 1

section .text
    global_start

_start:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message1
    mov edx, len1
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message2
    mov edx, len2
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, message3
    mov edx, len3
    int 0x80

    mov eax, SYS_EXIT
    int 0x80

section .data
message1 db 'Hello man!', 0xD,0xD
len1 equ $ - message1

message2 db 'Welcome to the world of, '
len2 equ $ - message2

message3 db 'NASM assebly programming', 0xD,0xD
len3 equ $ - message3 