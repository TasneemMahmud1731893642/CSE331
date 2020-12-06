
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


A DB 1,2,3,4,5,6,7,8,9,10
B DB 10 DUP(0)


     
      MOV AH,4CH
      INT 21H
CODE ENDS
END START

ret




