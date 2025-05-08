assume cs:code, ds:data

data segment
    str db 'Hello world!', 10, 13, '$'
data ends

code segment
start:
    mov ax, data
    mov ds, ax
    lea dx, str
    mov ah, 9
    int 21h

    mov ax, 4c00h
    int 21h
code ends

end start