
.MODEL SMALL
.STACK 100H
.DATA
    STR1 DB 'ENTER A HEX DIGIT: $'
    STR2 DB 0AH,0DH,'IN DECIMAL IT IS 1'
    ANS DB ?
    STR3 DB '$'
.CODE
MAIN PROC
 
    MOV AX,@DATA
    MOV DS,AX
 
    MOV AH,9
    LEA DX,STR1
    INT 21H
 
    MOV AH,1
    INT 21H
 
    SUB AL,11H
    MOV ANS,AL
 
    MOV AH,9
    LEA DX,STR2
    INT 21H
 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN