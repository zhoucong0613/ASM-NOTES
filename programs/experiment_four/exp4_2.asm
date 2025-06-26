assume cs:codesg

codesg segment

	mov ax,0020H
	mov ds,ax
	mov cx,64
	mov bx,0

s:	mov [bx],bl
	inc bx
	loop s

    mov ax, 4c00h
    int 21h

codesg ends

end
