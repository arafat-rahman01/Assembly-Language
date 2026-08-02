.model small
.stack 100h
.code
main proc
    mov bl,9
    
    again:
    
    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h
    
    dec bl
    cmp bl,1
    jne again
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end mai