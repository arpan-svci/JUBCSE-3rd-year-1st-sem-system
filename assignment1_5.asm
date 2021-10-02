dosseg
.model small
.stack 100H
.data
    message db 'this is end of era',10,'$'
.code
 main proc
    mov ax,@data
    mov ds,ax
    lea dx,message
    mov ah ,09H
    int 21H
    mov ah,4ch
    int 21H
    main endp
    end main