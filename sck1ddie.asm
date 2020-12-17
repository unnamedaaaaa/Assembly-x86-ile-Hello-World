global _start

section .text:

section .data:
	msj: db 'sck1ddie ile assembly :)',10	; 10 veya 0xA == \n
	len equ $-msj				; len degiskeni equal(esittir) $-msj'a 

_start:
	mov eax,0x4		; sys_write fonksiyonu
	mov ebx,0x1		; stdout <stdio.h>
	mov ecx,msj		; ecx = msj
	mov edx,len		; mesaj uzunlugu
	int 128			; kerneli getir

	mov eax,0x1		; sys_exit
	mov ebx,0x0
	int 128			; kerneli getir 128 veya 0x80
