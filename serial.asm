mov ah, 0; Servicio 00 de INT 14h: Inicializa el puerto

mov a1, 83; Configuración: No paridad, sin bit de parada y 8 bits de datos

mov dx, 00; Selecciona puerto COM1

int 14; Interrupción del BIOS

mov ah, 4ch; Servicio 4ch de INT 21h: terminar

int 21; Interrupción servicio del DOS