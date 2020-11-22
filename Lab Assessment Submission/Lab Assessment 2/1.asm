
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

   
 arr DB 5 DUP(?);
  
 mov bx, OFFSET arr
 mov [bx],3;
 mov [bx+1],10;
 mov [bx+2],1;
 mov [bx+3],4;
 mov [bx+4],9;             
              
                                
ret




