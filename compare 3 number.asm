.model small
.stack 100h
.code

main proc

    ; 1st input
    mov ah,1
    int 21h
    mov bl,al

    ; 2nd input
    mov ah,1
    int 21h
    mov bh,al

    ; 3rd input
    mov ah,1
    int 21h
    mov cl,al

    ; Compare BL and BH
    cmp bl,bh
    jg check3
    mov bl,bh

check3:
    ; Compare biggest (BL) with CL
    cmp bl,cl
    jg print
    mov bl,cl

print:
    mov ah,2
    mov dl,bl
    int 21h

exit:
    mov ah,4Ch
    int 21h

main endp
end main