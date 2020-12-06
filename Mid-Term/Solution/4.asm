
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
 .STACK 100H  
 


 

 .CODE
   MAIN PROC   
   
     

     

     MOV CX, 5                   

     MOV AH, 2                    
     MOV DL, 0                   

     @LOOP:                       
       INT 21H                    
       DEC CX 
       MOV AH,2
       MOV DL, "*" 
       JNZ @LOOP   
       
       MOV DL, 0DH
       MOV DL, 0AH
       INT 21H  
       
      
        
     
     @LOOP1:         
     MOV CX, 5        
     
                           
       INT 21H                    
       DEC CX 
       MOV AH,2
       MOV DL, "*"                    
     
     
             
                      
     JNZ @LOOP1                 

     MOV AH, 4CH                  
     INT 21H
   MAIN ENDP
 END MAIN

ret




