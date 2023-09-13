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

<b>lesson_01</b>
"HelloWorld.asm" - выводим строку "HelloWorld";<br>
"HelloWorld_V2.asm" - выводим строку "HelloWorld" (замена section на segment);

<b>lesson_02</b>
"Output_stars.asm" - вывести сообщение "Output 9 stars" и 9 звёзд (*********);

<b>lesson_03</b>
"InputName.asm" - запрашиваем и затем выводим имя пользователя;

<b>lesson_04</b>
"directEQU.asm" - выводим строки текста "Hello man!", "Welcome to the world of" и "Nasm assebly proramming";

<b>lesson_05</b>
"add_sum.asm" - запрос двух цифр и их суммирование;
"add_sum_v2.asm" - суммирование двух заданных чисел;

<b>lesson_06</b>
"log_and.asm" - вывод сообщения о чётности\нечётности числа, записаного в регистре AX;

<b>lesson_07</b>
"conditions.asm" - определение большего числа из трёх заранее определенных;

<b>lesson_08</b>
"cycles.asm" - вывод чисел от 1 до 9;

<b>lesson_09</b>
"ascii-representation.asm" - обработка чисел, записанных в ASCII;
"bcd-representation.asm" - сложение двух заранее определенных пятизначных чисел и вывод значений;

<b>lesson_10</b>
"cmps.asm" - сравнение двух строк "Hello, world!" и "No Hello, world!";
"lods.asm" - перемещение оригинальной строки "password" в память и сдвигаем каждую букву алфавита на одну букву;
"movs.asm" - копирование элемента данных из исходной строки(string1) в строку назначения(string2);
"scas.asm" - поиск определенного символа ("e") или набора символов в строке;
"stos.asm" - копирование элемента данных из регистров AL(STOSB), AX(STOSW) или EAX(STOSD) в строку назначения;

<b>lesson_11</b>
"array.asm" - складываем три элемента массива;

<b>lesson_12</b>
"procedures_ascii.asm" - процедура вывода полного набора ASCII;
"procedures_sum.asm" - процедура складывающая переменные из регистров ECX и EDX и возвращаем результат в EAX;

<b>lesson_13</b>
"recursion.asm" - расчёт и вывод факториала числа 2;

<b>lesson_14</b>
"macros.asm" - макрос с двумя параметрами, который реализует системный выхов sys_write;

<b>lesson_15</b>
"file.asm" - создание и открытие файла "file.txt" и записывает текст "Welcome" в этот файл. Затем считывам текст из файла в буфер info и выводим на экран;

<b>lesson_16</b>
"memory.asm" - выделение 16 Kb памяти с помощью системного вызова sys_brk;
