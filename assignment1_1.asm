.model SMALL
.stack 100H
.data                                       ;The strings to be printed
STRING db 'Arpan Mandal ',10,'$'
STRING1 db 'my first assembly ',10,'$'
.code
main proc
    mov ax,@data
    mov ds,ax  
    lea dx,STRING     
    MOV ah,09H
    int 21H    
    lea dx,STRING1 
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h
    main endp
    end main
