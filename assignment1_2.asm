;program to convert small letter to capital letter
dosseg
.model small
.stack 100H
.data
.code
    main proc
    mov ah,1
    int 21H
    mov dl,al
    sub dl,32
    mov ah,2
    int 21H
    mov ah,4ch
    int 21H
    main endp
    end main