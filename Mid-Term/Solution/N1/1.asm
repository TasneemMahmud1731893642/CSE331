
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA 

PROMPT_1 DB "Enter Integer 1: $"
PROMPT_2 DB "Enter Integer 2: $"
PROMPT_3 DB 0DH,0AH, "MUL of integers: $" 


.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS, AX

    LEA DX, PROMPT_1
    MOV AH, 9
    INT 21H

    MOV AH , 1
    INT 21H

    MOV BL , AL

    LEA DX, PROMPT_2
    MOV AH,9
    INT 21H 
    
    MOV AH , 1
    INT 21H
            
    MUL AL 
    
    LEA DX, PROMPT_3 
    MOV AH, 9
    INT 21H 
    
    MOV DL,AL
    INT 21H


    MOV AH , 4CH
    INT 21H

MAIN ENDP
END MAIN

ret




