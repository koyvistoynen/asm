# assembler
Обучение ассемблеру

<b>Сборка программы</b><br>
1. В каталоге с *.asm выполнить:<br>
  nasm -f elf code_name.asm <br>
  ld -m elf_i386 -s -o code_name code_name.o <br>
2. Запустить: <br>
./code_name <br>
Пример:<br>
nasm -f elf helloworld.asm <br>
ld -m elf_i386 -s -o helloworld helloworld.o <br>
./helloworld <br>

<b>lesson_01</b><br>
"HelloWorld.asm" - выводим строку "HelloWorld";<br>
"HelloWorld_V2.asm" - выводим строку "HelloWorld" (замена section на segment);<br>

<b>lesson_02</b><br>
"Output_stars.asm" - вывести сообщение "Output 9 stars" и 9 звёзд (*********);<br>

<b>lesson_03</b><br>
"InputName.asm" - запрашиваем и затем выводим имя пользователя;<br>

<b>lesson_04</b><br>
"directEQU.asm" - выводим строки текста "Hello man!", "Welcome to the world of" и "Nasm assebly proramming";<br>

<b>lesson_05</b><br>
"add_sum.asm" - запрос двух цифр и их суммирование;<br>
"add_sum_v2.asm" - суммирование двух заданных чисел;<br>

<b>lesson_06</b><br>
"log_and.asm" - вывод сообщения о чётности\нечётности числа, записаного в регистре AX;<br>

<b>lesson_07</b><br>
"conditions.asm" - определение большего числа из трёх заранее определенных;<br>

<b>lesson_08</b><br>
"cycles.asm" - вывод чисел от 1 до 9;<br>

<b>lesson_09</b><br>
"ascii-representation.asm" - обработка чисел, записанных в ASCII;<br>
"bcd-representation.asm" - сложение двух заранее определенных пятизначных чисел и вывод значений;

<b>lesson_10</b><br>
"cmps.asm" - сравнение двух строк "Hello, world!" и "No Hello, world!";<br>
"lods.asm" - перемещение оригинальной строки "password" в память и сдвигаем каждую букву алфавита на одну букву;<br>
"movs.asm" - копирование элемента данных из исходной строки(string1) в строку назначения(string2);<br>
"scas.asm" - поиск определенного символа ("e") или набора символов в строке;<br>
"stos.asm" - копирование элемента данных из регистров AL(STOSB), AX(STOSW) или EAX(STOSD) в строку назначения;<br>

<b>lesson_11</b><br>
"array.asm" - складываем три элемента массива;<br>

<b>lesson_12</b><br>
"procedures_ascii.asm" - процедура вывода полного набора ASCII;<br>
"procedures_sum.asm" - процедура складывающая переменные из регистров ECX и EDX и возвращаем результат в EAX;<br>

<b>lesson_13</b><br>
"recursion.asm" - расчёт и вывод факториала числа 2;<br>

<b>lesson_14</b><br>
"macros.asm" - макрос с двумя параметрами, который реализует системный выхов sys_write;<br>

<b>lesson_15</b><br>
"file.asm" - создание и открытие файла "file.txt" и записывает текст "Welcome" в этот файл. Затем считывам текст из файла в буфер info и выводим на экран;<br>

<b>lesson_16</b><br>
"memory.asm" - выделение 16 Kb памяти с помощью системного вызова sys_brk;<br>
