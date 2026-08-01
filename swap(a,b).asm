.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov ch,al
    
    xchg bl,ch
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    exit:
    main endp