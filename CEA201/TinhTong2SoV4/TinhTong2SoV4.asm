;ktra co in ra so hay khong - nhap chu bao loi
.Model small
.stack 100h
.data
tb1 db 10,13,'So thu nhat: $'
tb2 db 10,13,'So thu hai: $'
tb3 db 10,13,'Tong hai so: $'
err db 10,13,'Nhap sai', 10, 0
So1 db ?
So2 db ?
.Code
Main proc
Mov ax, @data
mov ds, ax 
;in ra dong tb1:   
a:
mov ah, 9h
lea dx, tb1
int 21h
; nhap so thu nhat
mov ah, 1
int 21h ;nhap 1 so và ket qua dang luu vào AL 
;Ktra dieu kien 
cmp al, '0'
jb a 
cmp al, '9'
ja a
mov so1, al  ;copy so da nhap vao nhan so1
;in ra dong tb2:
mov ah, 9h
lea dx, tb2
int 21h
;nhap so thu 2:
b:
mov ah, 1
int 21h 
;Ktra dieu kien 
cmp al, '0'
jb b
cmp al, '9'
ja b
;in ra chu bao loi neu nhap sai:
cmp al, '0'
jb c
cmp al, '9'
ja c
mov ah, 9h
lea dx, err
int 21h
ret
c:
add al, so2
mov so1, al ;so1 = tong
;in ra dong tb3:
mov ah, 9h
lea dx, tb3
int 21h
;in ra tong da tinh:
mov ah, 2
mov bl, so2
mov al, bl
int 21h
main endp




