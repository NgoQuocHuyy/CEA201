;Nhap vao 2 so sau do tinh tong 2 so da nhap
;Nhap vào 2 so sau do tinh tong 2 so da nhap (< 10)
.Model Small
.Stack 100h
.Data                                              
     so1   db   ?   
.Code
main proc
    MOV AX, @Data
    MOV DS, AX
    ; nhap so thu nhat
    mov ah, 1
    int 21h ;nhap 1 so và ket qua dang luu vào AL
    mov so1, al  ;copy so da nhap vao nhan so1
    ;nhap so thu 2:
    mov ah, 1
    int 21h
    add al, so1 ;cong 2 so vao nhau
    ;in ra tong da tinh:
    mov ah, 2 
    sub al, 30h
    mov dl, al
    int 21h
    ; ket thuc:
    MOV AH, 4ch    
    INT 21H  
    main endp




