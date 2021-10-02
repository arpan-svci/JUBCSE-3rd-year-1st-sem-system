.model small
.stack 100H
.data
.code
    main proc
        mov cx,00
        mov ax,30h
        mov bx,30h
        add ax,bx
        mov ds,ax
        mov ah,09H
        int 21H    
    main endp
    end main