BITS 64
SECTION .text

	global L3
	extern i1
L3:
	MOV dword [i1],123
	RET
