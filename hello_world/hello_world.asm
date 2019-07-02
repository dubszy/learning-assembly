default rel
section .data
  msg db 'Hello, world!', 10, 0

section .text
  global _main
  extern _printf

_main:
  push  rbp
  mov   rbp, rsp

  xor   eax, eax
  lea   rdi, [rel msg]
  call  _printf

  mov   rsp, rbp
  pop   rbp
  ret
