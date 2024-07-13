.model small
.data 

c db 0  
e db 0
y db 0 
w db 0 
a db 0
j db 1

array1 db 000h,000h,000h,000h  
       db 000h,000h,000h,000h  
       db 000h,000h,000h,000h
       db 000h,000h,000h,000h
       
array  db 000h,000h,000h,000h  
       db 000h,000h,000h,000h  
       db 000h,000h,000h,000h
       db 000h,000h,000h,000h

rk     db 000h,000h,000h,000h  
       db 000h,000h,000h,000h  
       db 000h,000h,000h,000h
       db 000h,000h,000h,000h                
           

matrix db 002h,003h,001h,001h  
       db 001h,002h,003h,001h  
       db 001h,001h,002h,003h
       db 003h,001h,001h,002h 


col  db 000h
     db 000h
     db 000h
     db 000h
Rcol  db 000h
      db 000h
      db 000h
      db 000h

                             
sbx db 63h,7ch,77h,07bh,0f2h,06bh,06fh,0c5h,30h,01h,67h,02bh,0feh,0d7h,0abh,076h                                                                                
    db 0cah,82h,0c9h,07dh,0fah,059h,47h,0f0h,0adh,0d4h,0a2h,0afh,09ch,0a4h,72h,0c0h
    db 0b7h,0fdh,93h,26h,36h,03fh,0f7h,0cch,34h,0a5h,0e5h,0f1h,71h,0d8h,31h,15h
    db 04h,0c7h,23h,0c3h,18h,96h,05h,09ah,07h,12h,80h,0e2h,0ebh,27h,0b2h,75h
    db 09h,83h,02ch,01ah,01bh,06eh,05ah,0a0h,52h,03bh,0d6h,0b3h,29h,0e3h,02fh,84h
    db 53h,0d1h,00h,0edh,020h,0fch,0b1h,05bh,06ah,0cbh,0beh,39h,04ah,04ch,58h,0cfh
    db 0d0h,0efh,0aah,0fbh,43h,04dh,33h,85h,45h,0f9h,02h,07fh,50h,03ch,09fh,0a8h
    db 51h,0a3h,40h,08fh,92h,09dh,38h,0f5h,0bch,0b6h,0dah,21h,10h,0ffh,0f3h,0d2h
    db 0cdh,00ch,013h,0ech,05fh,097h,044h,017h,0c4h,0a7h,07eh,03dh,64h,05dh,19h,73h
    db 60h,81h,04fh,0dch,22h,02ah,90h,88h,46h,0eeh,0b8h,14h,0deh,05eh,00bh,0dbh
    db 0e0h,32h,03ah,00ah,49h,06h,24h,05ch,0c2h,0d3h,0ach,62h,91h,95h,0e4h,79h
    db 0e7h,0c8h,037h,06dh,08dh,0d5h,04eh,0a9h,06ch,056h,0f4h,0eah,065h,07ah,0aeh,08h
    db 0bah,78h,25h,02eh,01ch,0a6h,0b4h,0c6h,0e8h,0ddh,074h,01fh,04bh,0bdh,08bh,08ah
    db 70h,03eh,0b5h,66h,48h,03h,0f6h,00eh,61h,35h,57h,0b9h,86h,0c1h,01dh,09eh
    db 0e1h,0f8h,98h,11h,69h,0d9h,08eh,94h,09bh,01eh,87h,0e9h,0ceh,55h,28h,0dfh
    db 08ch,0a1h,089h,00dh,0bfh,0e6h,42h,68h,41h,99h,02dh,00fh,0b0h,54h,0bbh,16h     

Rcon  db 01h,02h,04h,08h,10h,20h,40h,80h,01Bh,36h
      

roundKey1 db 0a0h,088h,023h,02ah
          db 0fah,054h,0a3h,06ch
          db 0feh,02ch,039h,076h
          db 017h,0b1h,039h,005h

roundKey2 db 0f2h,07ah,059h,073h
          db 0c2h,096h,035h,059h
          db 095h,0b9h,080h,0f6h
          db 0f2h,043h,07ah,07fh 

roundKey3 db 03dh,047h,01eh,06dh
          db 080h,016h,023h,07ah
          db 047h,0feh,07eh,088h
          db 07dh,03eh,044h,03bh     

roundKey4 db 0efh,0a8h,0b6h,0dbh
          db 044h,052h,071h,00bh
          db 0a5h,05bh,025h,0adh
          db 041h,07fh,03bh,000h                                           

roundKey5 db 0d4h,07ch,0cah,011h
          db 0d1h,083h,0f2h,0f9h
          db 0c6h,09dh,0b8h,015h
          db 0f8h,087h,0bch,0bch

roundKey6 db 06dh,011h,0dbh,0cah
          db 088h,00bh,0f9h,000h
          db 0a3h,03eh,086h,093h
          db 07ah,0fdh,041h,0fdh 

roundKey7 db 04eh,05fh,084h,04eh
          db 054h,05fh,0a6h,0a6h
          db 0f7h,0c9h,04fh,0dch
          db 00eh,0f3h,0b2h,04fh

roundKey8 db 0eah,0b5h,031h,07fh
          db 0d2h,08dh,02bh,08dh
          db 073h,0bah,0f5h,029h
          db 021h,0d2h,060h,02fh 

roundKey9 db 0ach,019h,028h,057h
          db 077h,0fah,0d1h,05ch
          db 066h,0dch,029h,000h
          db 0f3h,021h,041h,06eh

roundKey10 db 0d0h,0c9h,0e1h,0b6h
           db 014h,0eeh,03fh,063h
           db 0f9h,025h,00ch,00ch
           db 0a8h,089h,0c8h,0a6h 
           
           
keyColumn1 db 000h
           db 000h
           db 000h
           db 000h

keyColumn2 db 000h
           db 000h
           db 000h
           db 000h

keyColumn3 db 000h
           db 000h
           db 000h
           db 000h

keyColumn4 db 000h
           db 000h
           db 000h
           db 000h
       
                         
userInput DB 17, ?, 17 DUP(?)
userKey DB 17, ?, 17 DUP(?)

inputMessage db 0ah, 0dh, "ENTER INPUT: $" 
inputKey db 0ah, 0dh, "ENTER CIPHER KEY: $"
outputMessage db 0ah, 0dh, "THE ENCRYPTED MESSAGE IS: $"

input DB 16 DUP(?)
roundKey DB 16 DUP(?)


   
.code
    xor ax,ax 
    xor cx,cx 
    xor si,si 
    xor di,di
    xor bp,bp    
        
    mov ax,@DATA 
    mov ds,ax    
                
    
    mov ah,000h 
    
    
    lea dx, inputMessage      ; Load the address of the string into DX
    mov ah, 09h          ; DOS function 09h - print string
    int 21h    
     
    call InputMethod        
    
    lea dx, inputKey      ; Load the address of the string into DX
    mov ah, 09h          ; DOS function 09h - print string
    int 21h     
    
    call CipherKey
    
    MOV SI,0
    MOV CX, 16
    Copying:
    MOV AL, userInput[SI+2]
    MOV input[SI], AL
    MOV AL, userKey[SI+2]
    MOV roundKey[SI], AL
    INC SI
    Loop Copying 
    
    
    mov dx,0 
    mov ah,0
    mov si,0
    mov CX,0
    mov al,0
    jmp AddRoundKey1                
    
    
    InputMethod Proc

        MOV DX, offset userInput
        MOV AH, 0AH 
        int 21h
        ret
    ENDP  
    
    CipherKey Proc 
        MOV DX, offset userKey
        MOV AH, 0AH
        int 21h
        ret
    CipherKey ENDP 
    
    
    Output Proc 
        MOV SI, offset array1
        MOV CX, 16
         OutputLoop:
             MOV AL, [SI]
             MOV DL, AL
             MOV AH, 02H
             int 21H
             INC SI
             Loop OutputLoop 
        ret
   Output ENDP

             
        KeyScheduling:
            xor di,di 
 
          keyCol1: 
            mov al,roundKey[0]
            mov keyColumn1[0],al
            mov al, roundKey[4] 
            mov keyColumn1[1],al
            mov al, roundKey[8] 
            mov keyColumn1[2],al
            mov al, roundKey[12]
            mov keyColumn1[3],al
            
            
            
            
         keyCol2: 
            mov al,roundKey[1]
            mov keyColumn2[0],al
            mov al, roundKey[5] 
            mov keyColumn2[1],al
            mov al, roundKey[9] 
            mov keyColumn2[2],al
            mov al, roundKey[13]
            mov keyColumn2[3],al
                
            
        
        keyCol3: 
            mov al,roundKey[2]
            mov keyColumn3[0],al
            mov al, roundKey[6] 
            mov keyColumn3[1],al
            mov al, roundKey[10] 
            mov keyColumn3[2],al
            mov al, roundKey[14]
            mov keyColumn3[3],al
            
            
        keyCol4: 
            mov al,roundKey[3]
            mov keyColumn4[0],al
            mov al, roundKey[7] 
            mov keyColumn4[1],al
            mov al, roundKey[11] 
            mov keyColumn4[2],al
            mov al, roundKey[15]
            mov keyColumn4[3],al
            
        
        LoopKS: 
            
            mov ah,keyColumn4[0] 
            
            mov bh,keyColumn4[1]
            mov keyColumn4[0],bh
             
            
            mov bh, keyColumn4[2] 
            mov keyColumn4[1],bh
            
            mov bh, keyColumn4[3] 
            mov keyColumn4[2],bh 
            
 
            mov keyColumn4[3],ah
            
            subBytes2: 
                xor si,si
                xor bh,bh 
                    
            SB2: cmp si , 4 
                jz Xoring            
               
                mov bl,keyColumn4[si]    
                mov al,sbx[bx]      
                mov keyColumn4[si],al     
               
                inc si
                jmp SB2
            
            Xoring:
                mov al, keyColumn1[0]
                mov bl, keyColumn4[0]
                xor al,bl
                mov keyColumn1[0],al
                
                mov al, keyColumn1[1]
                mov bl, keyColumn4[1]
                xor al,bl
                mov keyColumn1[1],al
                
                mov al, keyColumn1[2]
                mov bl, keyColumn4[2]
                xor al,bl
                mov keyColumn1[2],al
                
                mov al, keyColumn1[3]
                mov bl, keyColumn4[3]
                xor al,bl
                mov keyColumn1[3],al
                                    
            RconCol:   
                
                cmp dh,1 
                jz first
                
                cmp dh,2 
                jz second
                
                cmp dh,3 
                jz third
                
                cmp dh,4 
                jz fourth
                
                cmp dh,5 
                jz fifth
                
                cmp dh,6 
                jz sixth
                
                cmp dh,7 
                jz seventh
                
                cmp dh,8 
                jz eighth
                
                cmp dh,9 
                jz ninth
                
                cmp dh,10
                jz tenth
                
                
                first:
                    mov ch, Rcon[0]  ;was using di
                    mov Rcol[0],ch
                    jmp complete2 
                second:
                    mov ch, Rcon[1]  ;was using di
                    mov Rcol[0],ch  
                    jmp complete2
                third:   
                    mov ch, Rcon[2]  ;was using di
                    mov Rcol[0],ch 
                    jmp complete2
                fourth:
                    mov ch, Rcon[3]  ;was using di
                    mov Rcol[0],ch
                    jmp complete2 
                fifth:
                    mov ch, Rcon[4]  ;was using di
                    mov Rcol[0],ch 
                    jmp complete2
                sixth:
                    mov ch, Rcon[5]  ;was using di
                    mov Rcol[0],ch
                    jmp complete2                 
                seventh:
                    mov ch, Rcon[6]  ;was using di
                    mov Rcol[0],ch
                    jmp complete2                 
                eighth:
                    mov ch, Rcon[7]  ;was using di
                    mov Rcol[0],ch
                    jmp complete2                 
                ninth:
                    mov ch, Rcon[8]  ;was using di
                    mov Rcol[0],ch
                    jmp complete2
                tenth:
                    mov ch, Rcon[9]  ;was using di
                    mov Rcol[0],ch 

                
                
             complete2:  
                
                mov ch,000h
                mov Rcol[1],ch  
                
                mov ch, 000h
                mov Rcol[2],ch
                
                mov ch,000h
                mov Rcol[3],ch
                
                ;inc di
                
            
            Xoring2:
                mov al, keyColumn1[0]
                mov bl, Rcol[0]
                xor al,bl
                mov keyColumn1[0],al
                
                mov al, keyColumn1[1]
                mov bl, Rcol[1]
                xor al,bl
                mov keyColumn1[1],al
                
                mov al, keyColumn1[2]
                mov bl, Rcol[2]
                xor al,bl
                mov keyColumn1[2],al
                
                mov al, keyColumn1[3]
                mov bl, Rcol[3]
                xor al,bl
                mov keyColumn1[3],al 
                
            getKeyColumn4:
                mov al,roundKey[3]
                mov keyColumn4[0],al
                mov al, roundKey[7] 
                mov keyColumn4[1],al
                mov al, roundKey[11] 
                mov keyColumn4[2],al
                mov al, roundKey[15]
                mov keyColumn4[3],al   
            Xoring3:
                mov al, keyColumn1[0]
                mov bl, KeyColumn2[0]
                xor al,bl
                mov keyColumn2[0],al
                
                mov al, keyColumn1[1]
                mov bl, keyColumn2[1]
                xor al,bl
                mov keyColumn2[1],al
                
                mov al, keyColumn1[2]
                mov bl, keyColumn2[2]
                xor al,bl
                mov keyColumn2[2],al
                
                mov al, keyColumn1[3]
                mov bl, keyColumn2[3]
                xor al,bl
                mov keyColumn2[3],al 
                
                
                
                mov al, keyColumn2[0]
                mov bl, KeyColumn3[0]
                xor al,bl
                mov keyColumn3[0],al
                
                mov al, keyColumn2[1]
                mov bl, keyColumn3[1]
                xor al,bl
                mov keyColumn3[1],al
                
                mov al, keyColumn2[2]
                mov bl, keyColumn3[2]
                xor al,bl
                mov keyColumn3[2],al
                
                mov al, keyColumn2[3]
                mov bl, keyColumn3[3]
                xor al,bl
                mov keyColumn3[3],al  
                
                
                
                mov al, keyColumn3[0]
                mov bl, KeyColumn4[0]
                xor al,bl
                mov keyColumn4[0],al
                
                mov al, keyColumn3[1]
                mov bl, keyColumn4[1]
                xor al,bl
                mov keyColumn4[1],al
                
                mov al, keyColumn3[2]
                mov bl, keyColumn4[2]
                xor al,bl
                mov keyColumn4[2],al
                
                mov al, keyColumn3[3]
                mov bl, keyColumn4[3]
                xor al,bl
                mov keyColumn4[3],al            

                 
            MovingToRoundKey: 
                mov al,keyColumn1[0]
                mov roundKey[0],al
                
                mov al,KeyColumn2[0]
                mov roundkey[1],al
                
                mov al,KeyColumn3[0]
                mov roundKey[2],al
                
                mov al,KeyColumn4[0]
                mov roundKey[3],al
                
                
                mov al,keyColumn1[1]
                mov roundKey[4],al
                
                mov al,KeyColumn2[1]
                mov roundkey[5],al
                
                mov al,KeyColumn3[1]
                mov roundKey[6],al
                
                mov al,KeyColumn4[1]
                mov roundKey[7],al 
                
                
                mov al,keyColumn1[2]
                mov roundKey[8],al
                
                mov al,KeyColumn2[2]
                mov roundkey[9],al
                
                mov al,KeyColumn3[2]
                mov roundKey[10],al
                
                mov al,KeyColumn4[2]
                mov roundKey[11],al 
                
                
                mov al,keyColumn1[3]
                mov roundKey[12],al
                
                mov al,KeyColumn2[3]
                mov roundkey[13],al
                
                mov al,KeyColumn3[3]
                mov roundKey[14],al
                
                mov al,KeyColumn4[3]
                mov roundKey[15],al                

            
                
                ;jmp endcode 
                
                
            
                
                 
    AddRoundKey1:
        xor si,si
        cmp dh,0 
        jne addRoundKeyHelper
    AR1: 
        cmp si,16     
        jz BigLoop ;
 
        mov al,input[si]          
        mov bl, roundKey[si] ;
        xor al,bl
        mov array1[si],al
        
        inc si     
        
        jmp AR1       
        
         
    
    xor dh,dh
    
    BigLoop:     
        cmp dh,10  
        jz endandprint  
        inc dh  
        
        SubBytes:
            xor si,si 
                
        SB: cmp si , 16 
            jz ShiftRows            
           
            mov bl,array1[si]    
            mov al,sbx[bx]      
            mov array1[si],al     
           
            inc si
            jmp SB
         
                 
        ShiftRows:
           xor si, si
           
        shift2ndRow: 
                  
           mov bl, array1[4]
           mov al, array1[5]
           mov array1[4],al
           mov al, array1[6]
           mov array1[5], al
           mov al, array1[7]
           mov array1[6], al
           mov array1[7],bl  
     
           jmp shift3rdRow 
            
        shift3rdRow: 
            
           cmp si,2
           jz shift4thRow
                   
           mov bl, array1[8]
           mov al, array1[9]
           mov array1[8],al
           mov al, array1[10]
           mov array1[9], al
           mov al, array1[11]
           mov array1[10], al
           mov array1[11], bl  
            
           inc si 
            
           jmp shift3rdRow
           
           
        shift4thRow:
           xor si,si 
           
        SR4: 
           cmp si,3
           jz nourhan
            
           mov bl, array1[12]
           mov al, array1[13]
           mov array1[12],al
           mov al, array1[14]
           mov array1[13], al
           mov al, array1[15]
           mov array1[14], al
           mov array1[15], bl  
            
           inc si 
            
           jmp SR4
           
        
        nourhan:
            cmp dh,10
            jz KeyScheduling ; HEREEEE
           
          
           
           
        mixColumns:
            xor si,si 
            xor di,di 
            xor bp,bp 
            xor sp,sp
            xor dl,dl
            xor al,al
            xor cl,cl
            xor bx,bx 
            
              
        MX: 
            loop4: 
                cmp si,4  
                jz putInArray1
                cmp bp,16; 
                jz janaa
                
                cmp si,0
                jz col1
                
                cmp si,1
                jz col2
                
                cmp si,2
                jz col3
                
                cmp si,3
                jz col4 
                 
               continue: 
                cmp bp,4
                jz repeat
                
                cmp bp,8
                jz repeat
                
                cmp bp,12
                jz repeat
                
              
                
                continue2:
    
                cmp matrix[bp],01
                jz MX1
                cmp matrix[bp],02
                jz MX2
                cmp matrix[bp],03
                jz MX3
                
                
             
             MX1:
                 mov bx,di
                 mov di,sp
                         
                 mov al,col[di]  
                
                 mov di,bx
                 
                 xor dl,al
                 inc sp
                 inc bp 
                 jmp loop4
                 
    
                 
             
             MX2: 
                 mov bx,di
                 mov di,sp 
                 
                 mov al, col[di]  
    
                         
                 mov cl, 002h
                 mul cl  
                 
                                      
                 mov ch,bl  
                 mov bl,al   
                  
                 mov ah,000h 
                 mov al, col[di]   
                 div cl       
                 mov ah,000h
                 div cl        
                 mov ah,000h
                 div cl        
                 mov ah,000h
                 div cl        
                 mov ah,000h
                 
                 mov cl,008h  
                
                 cmp al,cl   
                 jnge skip 
              
                 xor bl,01bh 
                 
                 skip: 
                 mov al,bl  
                 mov bl,ch  
                 mov di,bx  
                 
                 
                 xor dl,al
                 inc sp
                 inc bp
                 jmp loop4  
                 
    
                           
                
             
             MX3: 
                 mov bx,di
                 mov di,sp 
                 
                 mov al,col[di] 
                 xor dl,al
             
                 mov al, col[di] 
                 
                 
                 mov cl, 002h
                 mul cl 
                 
                 mov ch,bl
                 mov bl,al   
                 
                 mov ah,000h
                 mov al, col[di]
                 div cl
                 mov ah,000h
                 div cl
                 mov ah,000h
                 div cl
                 mov ah,000h
                 div cl
                 mov ah,000h
                 
                 mov cl,008h
                
                 cmp al,cl
                 jnge skip2
                    
                 
                 xor bl,01bh  
                 
                 skip2:
                 mov al,bl 
                 mov bl,ch
    
                 
                 mov di,bx
                 xor dl,al  
                 inc sp
                 inc bp
                 jmp loop4
          
            
        col1: 
            mov al,array1[0]
            mov col[0],al
            mov al, array1[4] 
            mov col[1],al
            mov al, array1[8] 
            mov col[2],al
            mov al, array1[12]
            mov col[3],al
            jmp continue
            
            
         col2: 
            mov al,array1[1]
            mov col[0],al
            mov al, array1[5] 
            mov col[1],al
            mov al, array1[9] 
            mov col[2],al
            mov al, array1[13]
            mov col[3],al
            jmp continue    
            
        
        col3: 
            mov al,array1[2]
            mov col[0],al
            mov al, array1[6] 
            mov col[1],al
            mov al, array1[10] 
            mov col[2],al
            mov al, array1[14]
            mov col[3],al
            jmp continue                    
           
        
        col4: 
            mov al,array1[3]
            mov col[0],al
            mov al, array1[7] 
            mov col[1],al
            mov al, array1[11] 
            mov col[2],al
            mov al, array1[15]
            mov col[3],al
            jmp continue                                        
            
         
         repeat:
            xor sp,sp
            mov array[di],dl 
            inc di
            xor dl,dl
            
            jmp continue2
            
         janaa:
            inc si
          
            xor bp,bp
            xor sp,sp
            
            mov array[di],dl 
            inc di
            xor dl,dl
            jmp loop4    
                              
                     
         putInArray1: 
            mov al,array[0]
            mov array1[0],al
            
            mov al,array[1]
            mov array1[4],al
            
            mov al,array[2]
            mov array1[8],al
            
            mov al,array[3]
            mov array1[12],al
            
            
            mov al,array[4]
            mov array1[1],al
            
            mov al,array[5]
            mov array1[5],al
                             
            mov al,array[6]
            mov array1[9],al
            
            mov al,array[7]
            mov array1[13],al 
            
            
            mov al,array[8]
            mov array1[2],al
            
            mov al,array[9]
            mov array1[6],al
            
            mov al,array[10]
            mov array1[10],al
            
            mov al,array[11]
            mov array1[14],al
            
            
            mov al,array[12]
            mov array1[3],al
            
            mov al,array[13]
            mov array1[7],al
                             
            mov al,array[14]
            mov array1[11],al
            
            mov al,array[15]
            mov array1[15],al
            
        jmp KeyScheduling  ;  HEREEEEEEE
        
        addRoundKeyHelper:  
            
            mov al,array1[0]
            mov input[0],al
            
            mov al,array1[1]
            mov input[1],al
            
            mov al,array1[2]
            mov input[2],al
            
            mov al,array1[3]
            mov input[3],al
            
            
            mov al,array1[4]
            mov input[4],al
            
            mov al,array1[5]
            mov input[5],al
                             
            mov al,array1[6]
            mov input[6],al
            
            mov al,array1[7]
            mov input[7],al 
            
            
            mov al,array1[8]
            mov input[8],al
            
            mov al,array1[9]
            mov input[9],al
            
            mov al,array1[10]
            mov input[10],al
            
            mov al,array1[11]
            mov input[11],al
            
           
            mov al,array1[12]
            mov input[12],al
            
            mov al,array1[13]
            mov input[13],al
                             
            mov al,array1[14]
            mov input[14],al
            
            mov al,array1[15]
            mov input[15],al

            
            jmp AR1
            
            
            endandprint:
            lea dx, outputMessage
            mov ah, 09h
            int 21h
            call Output
            jmp endcode
            
    
    
           
                    
            
    
    
    
    
    
    
    
    
    
                               
        
endcode: 
