section .text
global _start

_start:
	mov eax,0xffffffbd	;Inicializamos en el valor de la cadena cifrada
				;Este valor lo obtuvimos con gdb del programa cifrar
	not eax			;Invertimos eax
	sub eax,0b10		;Le restamos dos a eax
	dec eax			;Decrementamos eax
	xor eax,0b111		;Realizamos un xor a eax
	SHR eax,3		;Y finalmente corrimiento de tres a la derecha

	mov eax,1		;Finalizamos el programa
	int 0x80
