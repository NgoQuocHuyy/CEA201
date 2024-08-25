;bài 3: nhap vao ki tu tu ban phim, in ki tu da nhap ra + in hoa
.Model small
.stack 100h
.data
tb1 db 'Moi ban nhap chuoi ki tu: $'
tb2 db 10,13,'Ki tu da nhap: $'  
output db ?        
.code
Mov ax, @data
mov ds, ax
; in ra thong bao 1:
lea dx, tb1
mov ah, 9
int 21h 
; nhap 1 ki tu tu ban phim:
mov ah, 1
int 21h
mov output, al 
;add output, 20h
add output, 32 
; in ra tb2:
lea dx, tb2
mov ah, 9
int 21h  
; in ki tu da nhap
mov ah, 2
mov dl, output
int 21h
; thoat khoi chuong trinh:
mov ah, 4ch
int 21h
end



