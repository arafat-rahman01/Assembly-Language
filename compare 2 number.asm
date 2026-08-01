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
    
    big:
    cmp bl,bh
    jg l1
    jmp l2
    
    l2:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    l1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    exit:
    main endp