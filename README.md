# asm
Assembler learning

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

<b>lesson 1</b>
1. HelloWorld.asm - вывод Hello World
2. HelloWorld_V2.asm - вывод Hello World (замена section на segment)

<b>lesson 2</b>
1. Output_stars.asm - вывести сообщение и 9 звёзд

<b>lesson 3</b>
1. InputName.asm - запрашиваем и затем выводим имя пользователя

<b>lesson 4</b>
1. directEQU.asm - выводим строки текста "Hello man!" и "Welcome to the world of, Nasm assebly proramming"

<b>lesson 5</b>
1. add_sum.asm - ввод двух чисел и их суммирование
2. add_sum_v2.asm - суммирование двух чисел

<b>lesson 6</b>
1. log_and.asm - вывод сообщения о чётности\нечётности числа с регистра AX

<b>lesson 7</b>
1. conditions.asm - определение большего числа из трёх

<b>lesson 8</b>
1. cycles.asm - вывод чисел от 1 до 9

<b>lesson 9</b>
1. ascii-representation.asm - обработка чисел в ascii
2. bcd-representation.asm - сложение двух пятизначных чисел и вывод значений

<b>lesson 10</b>
1. cmps.asm - сравнение двух строк
2. lods.asm - перемещение оригинальной строки password в память и сдвигаем каждую букву алфавита на одну букву
3. movs.asm - копирование элемента данных из исходной строки в строку назначения
4. scas.asm - поиск определенного символа или набора символов в строке
5. stos.asm - копирование элемента данных из регистров AL(STOSB), AX(STOSW) или EAX(STOSD) в строку назначения

<b>lesson 11</b>
1. array.asm - складываем три элемента массива

<b>lesson 12</b>
1. procedures_ascii.asm - процедура вывода полного набора ascii
2. procedures_sum.asm - процедура складывающая переменные из регистров ECX и EDX и возвращаем результат в EAX

<b>lesson 13</b>
1. recursion.asm - расчёт факториала числа 2

<b>lesson 14</b>
1. macros.asm - макрос с двумя параметрами, который реализует системный выхов sys_write

<b>lesson 15</b>
1. file.asm - создание и открытие файла file.txt и записывает текст Welcome в этот файл. Затем считывам текст из файла в буфер info и выводим на экран

<b>lesson 16</b>
1. memory.asm - выделение 16 Kb памяти с помощью системного вызова sys_brk
