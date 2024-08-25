.Model small
.stack 100h
.data
tb1 db 'So thu nhat: $'
tb2 db 10,13,'So thu hai: $'
tb3 db 10,13,'Tong hai so: $'
So1 db ?
.Code
Main proc
Mov ax, @data
mov ds, ax 
;in ra dong tb1:
mov ah, 9h
lea dx, tb1
int 21h
; nhap so thu nhat
mov ah, 1
int 21h ;nhap 1 so và ket qua dang luu vào AL
mov so1, al  ;copy so da nhap vao nhan so1  
;in ra dong tb2:
mov ah, 9h
lea dx, tb2
int 21h
;nhap so thu 2:
mov ah, 1
int 21h
add al, so1 ;cong 2 so vao nhau 
mov so1, al ;so1 = tong
;in ra dong tb3:
mov ah, 9h
lea dx, tb3
int 21h
;in ra tong da tinh:
mov ah, 2 
mov al, so1
sub al, 30h
mov dl, al
int 21h

;thoat khoi chuong trinh:
mov ah, 4ch
int 21h
main endp





