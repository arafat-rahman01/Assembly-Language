.model small
.stack 100h
.code
main proc
    mov bl,1
    
    again:
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    inc bl
    cmp bl,10
    jne again
    
    exit:
    main endp