
Simple mixing c code with assemby code under linux.

run: \
nasm -f elf64 main.s -o main.o \
gcc main.c main.o -o program
