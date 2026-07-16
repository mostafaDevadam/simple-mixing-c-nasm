section .text
global  add_numbers

add_numbers:
  mov eax, edi;
  add eax, esi;
  ret
