;bai 2: in ra dong ho va ten sinh vien, dong 2 in ra ma so sinh vien
.Model small
.stack 100h
.data
  tb1 db 'Ngo Quoc Huy $'
  tb2 db 10,13,'HE186268 $'  
  
.code
 ; lay du lieu tu data vao thanh ghi ds
 Mov ax, @data
 mov ds, ax
 ; in ra dong tb1:
 mov ah, 9h 
 lea dx, tb1
 int 21h             
 ; in ra dong tb2:
  ;move ah, 9h vi da co ben tren
 lea dx, tb2
 int 21h
 ; thoat khoi chuong trinh:
 mov ah,4ch
 int 21h
 end



