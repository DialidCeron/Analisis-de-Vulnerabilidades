section .text
global _start

_start:
	mov edi,0 ;vamos a usar el registro edi como contador
			;inicializamos en 0
compara:
	cmp edi,10	;comparamos si el registro vale 10
	je final	;en caso de que se va al final
loop1:
	mov edx,len_iterar	;len_iterar es la longitud a escribir
	mov ecx,msg_iterar ;buffer
	mov esi,1	;salida estandar
	mov eax,4	;llama a imprimir
	int 0x80	;llamada a sistema para imprimir mensaje
	inc edi		;incrementamos el registro edi
	jmp compara	;regresa a compara
final:
	mov eax,1	;para evitar segmentation fault
	int 0x80	;Terminamos la ejecucion

section .data:
	msg_iterar: db 'Iterando este mensaje', 0xa
	len_iterar: equ $ - msg_iterar
