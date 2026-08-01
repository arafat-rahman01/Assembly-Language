;add two numbers
.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    
    sub bl,48
    sub bh,48
    sub bl,bh
    add bl,48
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    main endp