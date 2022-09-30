proc redfrac
 push bp ; Preserva BP
 mov bp, sp ; Crea variables
 sub sp, 4 ; locales en la pila
 push bx ; Preserva BX
;num = [BP-2], den = [BP-4]
 mov [bp2], ax ; num = numerador
 mov [bp4], dx ; den = denominador
 call mcd ; BX = mcd(numerador,
 ; denominador)
 mov bx, ax
 xor dx, dx ; num = numerador/BX
 mov ax, [bp2]
 div bx
 mov [bp2], ax
 mov ax, [bp4] ; DX = denominador/BX
 div bx
 mov dx, ax
 mov ax, [bp2] ; AX = num
 pop bx ; Restaura BX
 mov sp, bp ; Elimina variables locales
 pop bp ; Restaura BP
 ret
endp redfrac