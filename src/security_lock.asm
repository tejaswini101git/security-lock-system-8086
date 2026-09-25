.MODEL SMALL
.STACK 100H

.DATA
    PASSWORD DB '1234'
    INPUT    DB 5 DUP(?)

    MSG1     DB 10,13,'ENTER PASSWORD: $'
    MSG2     DB 10,13,'ACCESS GRANTED!$'
    MSG3     DB 10,13,'ACCESS DENIED!$'
    MSG4     DB 10,13,'TOO MANY ATTEMPTS!$'
    STAR     DB '*$'

    ATTEMPTS DB 3

.CODE
MAIN:
    MOV AX, @DATA
    MOV DS, AX

START:
    CMP ATTEMPTS, 0
    JE EXIT_PROGRAM

    ; Display password prompt
    MOV AH, 09H
    LEA DX, MSG1
    INT 21H

    ; Read password input
    MOV SI, 0

INPUT_LOOP:
    MOV AH, 01H
    INT 21H

    CMP AL, 13          ; ENTER key
    JE CHECK_PASSWORD

    MOV INPUT[SI], AL
    INC SI

    ; Display * instead of the entered character
    MOV AH, 09H
    LEA DX, STAR
    INT 21H

    JMP INPUT_LOOP

CHECK_PASSWORD:
    MOV SI, 0
    MOV DI, 0
    MOV CX, 4

COMPARE_LOOP:
    MOV AL, INPUT[SI]
    MOV BL, PASSWORD[DI]

    CMP AL, BL
    JNE WRONG

    INC SI
    INC DI
    LOOP COMPARE_LOOP

    ; Correct password
    MOV AH, 09H
    LEA DX, MSG2
    INT 21H

    JMP END_PROGRAM

WRONG:
    DEC ATTEMPTS

    MOV AH, 09H
    LEA DX, MSG3
    INT 21H

    JMP START

EXIT_PROGRAM:
    MOV AH, 09H
    LEA DX, MSG4
    INT 21H

END_PROGRAM:
    MOV AH, 4CH
    INT 21H

END MAIN
