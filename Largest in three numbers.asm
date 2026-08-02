.model small
.stack 100h
.data

a db 'Enter 1st number: $'
b db 10,13,'Enter 2nd num: $'
c db 10,13,'Enter 3rd number: $'
d db 10,13,'Number 1st is largest $'
e db 10,13,'Number 2nd is largest $'
f db 10,13,'Number 3rd is largest $'

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
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    cmp bl,bh ;1 & 2
    jg f_bl   ;1>2
    jmp f_bh  ;2>1
    
    f_bh:
    cmp bh,cl
    jg p2
    jmp p3
    
    
    f_bl:
    cmp bl,cl ;1>3
    jg p1
    jmp p3
    
    
    
    p1:
    mov ah,9
    lea dx,d
    int 21h
    jmp exit
    
    p2:
    mov ah,9
    lea dx,e
    int 21h
    jmp exit
    
    p3:
    mov ah,9
    lea dx,f
    int 21h
    
    
    exit:
    main endp