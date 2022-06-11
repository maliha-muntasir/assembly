.model small ;code segment data segment belong here
.stack 100h
.data
m db 'I am a student $'  ;$ represents string 
.code
main proc
    ;1->single key input 
    ;2->single character output
    ;9->character string output
    
    mov ax,@data  ;data gulo by default al e ashe,but jehetu string tai ax e jabe 
    mov ds,ax  ;by default theke sorate hbe,ar jehetu ds input output ney tai ds e rakha hoyeche
    
    mov ah,9
    lea dx,m         ;load effective register,ar lea dx e nite hoy,lea te value er address ney
    int 21h       ;call korteche  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    mov ah,1
    int 21h   ;input execute kortechi 
    mov bl,al
    
    
     mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
     
    mov ah,2
    mov dl,bl
    int 21h  
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
    
    