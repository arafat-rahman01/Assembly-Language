.model small      
.stack 100h       
.code             

main proc 

    ; --- Input ---
    mov ah, 1     
    int 21h       
    mov bl, al    
    
    ; --- Output ---
    mov ah, 2     
    mov dl, bl    
    int 21h       
    
    ; --- New Line ---
    mov ah, 2     

    mov dl, 13    ; CR
    int 21h       

    mov dl, 10    ; LF
    int 21h       

    ; --- Exit ---
    mov ah, 4Ch   
    int 21h          

main endp 
end main