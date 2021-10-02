.MODEL SMALL
.STACK 100H

.DATA
        MESSAGE3 DB "VALID $"
        MESSAGE4 DB "INVALID $"
        MESSAGE5 DB "EQUAL $"


.CODE
    MAIN PROC
                MOV AX,@DATA                 ;initializes data segment
                MOV DS, AX
                MOV AH,1                      ;takes the first input
                INT 21H

                MOV BL,AL

                MOV DX,13                       ;goto the next line
                INT 21H
                MOV AH,1                        ;takes the second input
                INT 21H

                MOV CL,AL
                CMP BL,CL                       ;compare between two numbers
                JG LABEL1                       ; if BL>CL goto LABEL1

                CMP BL,CL                       ;compare between two numbers
                JL LABEL2                       ; if BL<CL goto LABEL2

                MOV AH,2                        ;disk reset
                MOV DL,0DH
                INT 21H

                MOV DL,0AH                      ;buffered input
                INT 21H

                LEA DX, MESSAGE5                 ;displays message5
                MOV AH,9
                INT 21H

        FINISH: MOV AH,4CH                     ;exit the program
                INT 21H
        
        LABEL1:
                MOV DL,0AH                      ;buffered input
                INT 21H

                LEA DX, MESSAGE3                 ;displays output message3
                MOV AH,9
                INT 21H
                LOOP FINISH

        LABEL2: 
                MOV DL,0AH                      ;buffered input
                INT 21H

                LEA DX, MESSAGE4                 ;displays output message4
                MOV AH,9
                INT 21H
                LOOP FINISH

MAIN ENDP
END MAIN