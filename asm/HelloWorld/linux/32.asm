; 32.asm
; Author: Alejandro Juarez
; nasm -f elf32 -o 32.o 32.asm && ld -o 32 32.o && ./32

global _start

section .text

_start:
	; print hello world on the screen
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen
  int 0x80

	; exit the program gracefully
	mov eax, 0x1
	mov ebx, 0x5
  int 0x80

	
section .data

 	message: db "Hello World!"
	mlen	equ $-message

