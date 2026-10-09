```asm
.MODEL SMALL
.STACK 256

.DATA
    ; Embedded source file: RGC_CINEMAS.asm
    SRC_DB DB "assembly source code (embedded)"
    
.CODE
START:
    mov ax, @DATA
    mov ds, ax

    ; Display message
    mov dx, OFFSET SRC_DB
    mov ah, 09h
    int 21h

    ; Exit program
    mov ax, 4C00h
    int 21h

END START
```