; поиск определенного символа или набора символов в строке

section .text
    global _start

_start:

    mov ecx, len
    mov edi, string
    mov al, 'e'
    cld
    repne scasb
    je found ; когда нашли символ

; если не нашли, то выполняем следующий код

    mov eax, 4
    mov ebx, 1
    mov ecx, msg_notFound
    mov edx, len_notFound
    int 0x80
    jmp exit

found:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_found
    mov edx, len_found
    int 0x80

exit:
    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
string db 'Hello world', 0
len equ $ - string

msg_found db 'Found', 0xa
len_found equ $ - msg_found

msg_notFound db 'Not Found', 0xa
len_notFound equ $ - msg_notFound