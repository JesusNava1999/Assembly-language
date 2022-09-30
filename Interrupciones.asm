Org 00h 
Ljmp 30h  
org 03h  
ljmp inter0
org 13h
ljmp inter1

Org 30h               
mov IE,#85h   
Mov a,#00h       
Mov p0,a      


Mov a,0xff       
Mov p1,a    

Inicio: 
Mov a,p1 
Cjne a,#61h,otro 
Mov a, 0xff
Mov p0,a

Otro: 
ljmp inicio

inter0:
mov a, #00h
mov p0,a
reti

inter1: mov p0,a
reti

End