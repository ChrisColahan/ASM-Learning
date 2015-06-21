nasm -f elf $1 -o output.o && ld -m elf_i386 output.o -o output.bin
