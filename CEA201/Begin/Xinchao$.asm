;bai 1: in ra chuoi ki tu da cho
;bai 2: in ra dong ho va ten sinh vien, dong 2 in ra ma so sinh vien
;b�i 3: nhap vao ki tu tu ban phim, in ki tu da nhap ra
;bai 4: nhap v�o 1 ki tu in thuong tu ban phim, chuyen thanh in hoa in ra
;bai 5: nhap vao chuoi ki tu bat ki, in chuoi ki tu da nhap
;bai 6:nhap mot chuoi bat k�, co ca in hoa v� in thuong
.Model small
.stack 100h
.data
 tb1 db 'xin chao $'
.code     
;lay du lieu tu data vao thanh ghi ds:
Mov ax, @data
mov ds, ax                            
;in ra dong tb1:
mov ah, 9h
lea dx, tb1
int 21h
;thoat khoi chuong trinh:
mov ah, 4ch
int 21h
end


