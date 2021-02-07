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
