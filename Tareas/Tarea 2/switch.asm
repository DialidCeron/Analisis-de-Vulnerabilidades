section .text
global _start

_start:
	;mov eax,0xAAA
	mov eax,0xBBB ; Casos a evaluar eax

	mov ebx,0xAAA
	cmp eax,ebx ;comparar si caso a
	je casoa    ;ve a casoa si eax es aaa

	mov ebx,0xBBB
	cmp eax,ebx ;comparar si caso b
	je casob ;ve a caso b si eax es bbb

	jmp defaul ;si ninguna, ve a caso default

casoa:
	mov edx,len_casoa ;len_casoa es la longitud a escribir
	mov ecx,msg_casoa ;buffer
	mov ebx,1	;salida estandar
	mov eax,4 	;llama a imprimir
	int 0x80	;llamada al sistema para mandar a pantalla el mensaje
	mov ebx,1
	mov eax,1
	int 0x80	;llamada al kernel para salir

casob:
	mov edx,len_casob ;len_casoa es la longitud a escribir
        mov ecx,msg_casob ;buffer
        mov ebx,1       ;salida estandar
        mov eax,4       ;llama a imprimir
        int 0x80        ;llamada al sistema para mandar a pantalla el mensaje
        mov ebx,1
        mov eax,1
        int 0x80        ;llamada al kernel para salir

defaul:
	mov edx,len_defaul ;len_casoa es la longitud a escribir
        mov ecx,msg_defaul ;buffer
        mov ebx,1       ;salida estandar
        mov eax,4       ;llama a imprimir
        int 0x80        ;llamada al sistema para mandar a pantalla el mensaje
        mov ebx,1
        mov eax,1
        int 0x80        ;llamada al kernel para salir


section .data:
	msg_casoa: db 'Switch Caso A',0xa
	len_casoa: equ $ - msg_casoa
	msg_casob: db 'Switch Caso B',0xa
	len_casob: equ $ - msg_casob
	msg_defaul: db 'Default',0xa
	len_defaul: equ $ - msg_defaul
