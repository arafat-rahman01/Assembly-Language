.model small
.stack 100h
.code

main proc

    mov cl,9        ; শুরু 9 থেকে

again:
    mov ah,2
    mov dl,cl
    add dl,30h      ; ASCII তে রূপান্তর
    int 21h

    dec cl          ; CL = CL - 1
    cmp cl,0        ; 0 হয়েছে?
    jne again       ; না হলে আবার Loop

    mov ah,4Ch
    int 21h

main endp
end main