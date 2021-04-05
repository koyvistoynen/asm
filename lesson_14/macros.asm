; макрос с двумя параметрами, который реализует системный выхов sys_write
    %macro write_string 2
        mov eax, 4
        mov ebx, 1
        mov ecx, %1
        mov edx, %2
        int 0x80
    %endmacro

section .text
    global _start

_start:
    write_string message1, len1
    write_string message2, len2
    write_string message3, len3

    mov eax, 1
    int 0x80

section .data
message1 db 'Привет!', 0xA,0xD
len1 equ $ - message1

message2 db 'Добро пожаловать, ', 0xA,0xD
len2 equ $ - message2

message3 db 'в этот мир! ', 0xA,0xD
len3 equ $ - message3