; создание и открытие файла file.txt и записывает текст Welcome
; в этот файл. Затем считывам текст из файла в буфер info
; и выводим на экран

section	.text
   global _start         ; объявляем для использования gcc
	
_start:                  ; сообщаем линкеру входную точку
   ; Создаём файл
   mov  eax, 8
   mov  ebx, file_name
   mov  ecx, 0777        ; читать, писать и выполнять могут все
   int  0x80             ; вызов ядра
	
   mov [fd_out], eax
    
   ; Записываем данные в файл
   mov	edx, len          ; количество байтов
   mov	ecx, msg         ; сообщение для записи в файл
   mov	ebx, [fd_out]    ; файловый дескриптор
   mov	eax,4            ; номер системного вызова (sys_write)
   int	0x80             ; вызов ядра
	
   ; Закрываем файл
   mov eax, 6
   mov ebx, [fd_out]
    
   ; Выводим на экран сообщение, указывающее на конец записи в файл
   mov eax, 4
   mov ebx, 1
   mov ecx, msg_done
   mov edx, len_done
   int  0x80
    
   ; Открываем файл для чтения
   mov eax, 5
   mov ebx, file_name
   mov ecx, 0             ; доступ "Только для чтения"
   mov edx, 0777          ; читать, писать и выполнять могут все
   int  0x80
	
   mov  [fd_in], eax
    
   ; Считываем данные из файла
   mov eax, 3
   mov ebx, [fd_in]
   mov ecx, info
   mov edx, 26
   int 0x80
    
   ; Закрываем файл
   mov eax, 6
   mov ebx, [fd_in]
   int  0x80    
	
   ; Выводим на экран данные из буфера info 
   mov eax, 4
   mov ebx, 1
   mov ecx, info
   mov edx, 26
   int 0x80
       
   mov	eax,1             ; номер системного вызова (sys_exit)
   int	0x80              ; вызов ядра
 
section	.data
file_name db 'file.txt',0
msg db 'Добро пожаловать!'
len equ  $-msg
 
msg_done db 'Запись в файл', 0xa
len_done equ $-msg_done
 
section .bss
fd_out resb 1
fd_in  resb 1
info resb  26