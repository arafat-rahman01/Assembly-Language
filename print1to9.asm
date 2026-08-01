.model small
.stack 100h
.code

main proc

    mov cl,1        ; শুরু 1 থেকে

again:
    mov ah,2
    mov dl,cl
    add dl,30h      ; সংখ্যাকে ASCII-তে রূপান্তর
    int 21h

    inc cl          ; CL = CL + 1
    cmp cl,10       ; 10 হয়েছে?
    jne again       ; না হলে আবার লুপ

    mov ah,4Ch
    int 21h

main endp
end main