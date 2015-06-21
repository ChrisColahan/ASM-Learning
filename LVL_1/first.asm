;for linux 32bit systems.
;intel syntax
;comiles with nasm

;followed tuorial from http://www.tldp.org/HOWTO/html_single/Assembly-HOWTO/#AEN203

section .data 	;declare data (variables. read-write) section

	msg db "Hello, World!", 0xa	;string to be printed
	len equ $-msg		;length of the string


section .text	;declares program (read only) section

	global _start	;declare entry point

_start:

	;write something to stdout
	
	;arguments are moved in reverse parameter order
	mov edx, len	;third param. length
	mov ecx, msg	;second param. the messege
	mov ebx, 1		;first param. file handle (stdout)
	mov eax, 4		;sys call num (sys_write)
	int 0x80		;call kernal

	mov ebx, 0		;exit code
	mov eax, 1		;call sys_exit
	int 0x80		;call kernal (interrupt)

