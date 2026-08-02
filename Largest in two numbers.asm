.model small
.stack 100h
.data

a db 'Enter 1st number: $'
b db 10,13,'Enter 2nd num: $'
c db 10,13,'Number 1st is largest $'
d db 10,13,'Number 2nd is largest $'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh
    jg l1
    jmp l2
    
    l2:
    mov ah,9
    lea dx,d
    int 21h
    jmp exit
    
    l1:
    mov ah,9
    lea dx,c
    int 21h
    
    
    exit:
    main endp