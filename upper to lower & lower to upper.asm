;add two numbers
.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    add bl,32;up->low
    ;sub bl,32 low->up
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    main endp