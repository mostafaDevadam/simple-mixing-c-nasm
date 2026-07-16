# --- Variables ---
# Compilers and Assemblers
CC      := gcc
ASM     := nasm

# Compiler / Assembler Flags
ASFLAGS := -f elf64
CFLAGS  := -Wall -Wextra -O2

# Target program name
TARGET  := program

# --- Phony Targets ---
.PHONY: all run clean

# --- Build Rules ---
# Default target
all: $(TARGET)

# Link the executable from object files
$(TARGET): main.o main.c
	$(CC) $(CFLAGS) main.c main.o -o $(TARGET)

# Assemble assembly source into object file
main.o: main.s
	$(ASM) $(ASFLAGS) main.s -o main.o

# Helper to build and run immediately
run: clean all
	./$(TARGET)

# Clean up generated files
clean:
	rm -f *.o $(TARGET)