MiMacro MACRO p1, p2, p3
	MOV 0xA, p1
	MOV 0xB, p2
	MOV 0xC, p3
ENDM
ORG 100h
MiMacro 1, 2, 3
MiMacro 4, 5, 0xD
RET
