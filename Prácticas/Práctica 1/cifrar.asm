section .text
global _start	;este programa cifra una cadena con varias operaciones
		;la comprobacion de la cadena resultante la hacemos con gdb

_start:
	mov eax,0b111 ;colocamos valor de 7 en binario
	SHL eax,3	;realizamos corrimiento de 3 a la izquierda
	xor eax,0b111	;realizamos xor a eax con 111
	inc eax		;incrementamos eax
	add eax,0b10	;aniadimos 2 a eax
	NOT eax		;invertimos los bits
	mov eax,1
	int 0x80
