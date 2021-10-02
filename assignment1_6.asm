dosseg
.model small
.stack 100H
.data
.code
    main proc
    mov ah,1
    int 21H
    mov bl,al
    mov dx,13
    int 21H
    mov ah,2
    mov dl,bl
    int 21H
    mov ah,4ch
    int 21H
    main endp
    end main