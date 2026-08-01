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
    
    mov ah,1
    int 21h
    mov cl,al
    
    sub bl,48
    sub bh,48
    sub cl,48
    add bh,cl
    add bl,bh
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    main endp