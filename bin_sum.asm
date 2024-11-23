   .model small
   .stack 100h
   .data
    bin1 db 10010b
    bin2 db 11010b
    result db ?
    
    .code
    
    main proc
        mov ax,@data
        mov ds,ax
        
        mov al,bin1
        add al,bin2
        mov result,al
        ;int 21h
        
        
        mov ah,2
        mov dl,result
        int 21h
        
        mov ah,4ch
        int 21h
        
        main endp
    end main