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
    
    mov al,bl
    mul bh
    
    add al,48
    mov ah,2
    mov dl,al
    int 21h
    
    
    exit:
    main endp