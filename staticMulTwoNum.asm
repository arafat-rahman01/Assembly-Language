.model small
.stack 100h

.data
a db 2
b db 3
r db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,a
    mov bl,b
    
    mul bl
    
    mov r,al
    
    add al,48
    
    mov ah,2
    mov dl,al
    int 21h
    
    
    exit:
    main endp