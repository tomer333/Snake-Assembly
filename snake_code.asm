; Author - Tomer Dahan
IDEAL
MODEL small
STACK 100h
DATASEG
colors db 11h, 33h, 55h, 77h, 0EEh, 0AAh
ascii db 48, 49, 50, 51, 52, 53, 54, 55, 56, 57
numrandom db 0,0
food dw 0,0
way db 4dh
; constans  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
true  equ 1
false equ 0
; variables ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
nowPause db 1
;screens    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
preFrame   db'============================================================================',13,10 
		   db'             ===============================================                ',13,10
		   db'                                                                            ',13,10
		   db'                                                                            ',13,10
		   db'                                                                            ',13,10
		   db'                  ss                                                        ',13,10
		   db'                ss  ss                                                      ',13,10   
		   db'              ss      ss                                                    ',13,10            
           db'             ss   ss   ss                                                   ',13,10  
           db'             ss   ss   ss   nn   nn    aaa    kk  kk  eeeeee                ',13,10  
           db'               ss   ss      nnn  nn   aa aa   kk kk   ee                    ',13,10  
           db'                 ss   ss    nn n nn  aa   aa  kkkk    eeeeee                ',13,10  
           db'             ss   ss   ss   nn  nnn  aaaaaaa  kk kk   ee                    ',13,10  
           db'             ss   ss   ss   nn   nn  aa   aa  kk  kk  eeeeee                ',13,10  
		   db'              ss      ss                                                    ',13,10
		   db'                ss  ss                                                      ',13,10
		   db'                  ss                                                        ',13,10
		   db'                                                                            ',13,10
		   db'                                                                            ',13,10
		   db'                                                                            ',13,10	
		   db'                                                                            ',13,10
		   db'                                                                            ',13,10
		   db'                         Press any key to continue                          ',13,10
		   db'             ===============================================                ',13,10
           db'============================================================================$'
		   
		   
menu    db'================================== S N A K E ================================',13,10
		db' 	       S N A K E                                 S N A K E              ',13,10
		db' 	             S N A K E                    S N A K E                     ',13,10
		db' 	                   S N A K E       S N A K E                            ',13,10
		db' 	                           S N A K E                                    ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10   
		db'                                                                             ',13,10                     
		db'             Enter - to start the game                                       ',13,10             
		db'             i     - for Instructions                                        ',13,10
		db'             r     - for rules                                               ',13,10 		
		db'             ESC   - to EXIT the game                                        ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10    
		db'                                                                             ',13,10
		db'             Written By: Tomer Dahan                                         ',13,10
		db'                                                                             ',13,10
		db'             Mentor: Maryanovsky Alla                                       ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10 
		db'=============================================================================$'
 instructions   db'================================  S N A K E  ================================',13,10
				db'                                                                             ',13,10
				db'                                INSTRUCTIONS                                 ',13,10
				db'                                ------------                                 ',13,10 
				db'                                                                             ',13,10     	
				db'                                                                             ',13,10
				db'                                                                             ',13,10    
				db'                                                                             ',13,10                     
				db'                 ESC   - to EXIT the GAME                                    ',13,10
				db'                 ENTER  - start/continue Play                                ',13,10   
				db'                 player can move with one of the arrows each time            ',13,10    
				db'                 Up    - for moving up                                       ',13,10
				db'                 Down  - for moving down                                     ',13,10
				db'                 Left  - for moving left                                     ',13,10
				db'                 Right - for moving right                                    ',13,10
				db'                 C button - for changing color             					',13,10
				db'                 Space button - for shooting                                 ',13,10     
				db'                                                                     	    ',13,10
				db'                                                                         	',13,10
				db'                 PRESS m or n for returning to the MENU                      ',13,10 
				db'                                                                             ',13,10    
				db'                                                                             ',13,10    
				db'==============================================================================$'
; still not in use	
rules   db'================================  S N A K E  ================================',13,10
		db'                                                                             ',13,10
		db'                                    RULES                                    ',13,10
		db'                                ------------                                 ',13,10 
		db'                                                                             ',13,10     	
		db'                                                                             ',13,10
		db'    The PLAYER purpose is to avoid touching the frame                        ',13,10    
		db'    If the snake hit itself you lose                                         ',13,10                     
		db'    The snake grows each time it eats food                                   ',13,10
		db'    The snake from a distance can shot the food and grow						',13,10
		db'    The snake keeps moving in the same direction                             ',13,10   
		db'    PLAYER can change the direction with one of the arrows                   ',13,10    
		db'    The snake can not change his direction if it is opposite to his movement ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                         								    ',13,10
		db'                                                                             ',13,10     
		db'                                                                     	    ',13,10
		db'                                                                         	',13,10
		db'                 PRESS n or m for returning to the MENU                      ',13,10 
		db'                                                                             ',13,10    
		db'                                                                             ',13,10    
		db'==============================================================================$'
 blank  db'==============SCORE :   ========  S N A K E  ================================',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10    
		db'                                                                             ',13,10                     
		db'                                                                             ',13,10    
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10             
		db'                                                                             ',13,10       
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10
		db'                                                                             ',13,10 
		db'=============================================================================$'
; still not in use	
gameOver db'=================================  S N A K E  ===============================',13,10
	db'                                                                             ',13,10
    db'                                                                             ',13,10
	db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                              G A M E  O V E R!                              ',13,10
    db'                            ---------------------                            ',13,10
    db'                                                                             ',13,10    
    db'                                 YOUR SCORE:                                 ',13,10                     
    db'                                                                             ',13,10    
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10             
    db'                                                                             ',13,10       
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
	db'                                                                             ',13,10 
    db'=============================================================================$'	
win db'=================================  S N A K E  ===============================',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
	db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                Y O U  W I N!                                ',13,10
    db'                            ---------------------                            ',13,10
    db'                                                                             ',13,10    
    db'                                                                             ',13,10                     
    db'                                                                             ',13,10    
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10             
    db'                                                                             ',13,10       
    db'                                                                             ',13,10
    db'                                                                             ',13,10
    db'                                                                             ',13,10
	db'                                                                             ',13,10 
    db'=============================================================================$'	
head dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
CODESEG
proc random
	;part of random number for address of food
	push dx
	push bx
	push ax
	push cx
	push di
	push si
	xor ax,ax            ; xor register to itself same as zeroing register
	int 1ah              ; Int 1ah/ah=0 get timer ticks since midnight in CX:DX
	mov ax,dx            ; Use lower 16 bits (in DX) for random value

	xor dx,dx            ; Compute randval(DX) mod 10 to get num
	mov bx, 22           ;     between 0 and 22
	div bx               ; Divide dx:ax by bx
	add dx, 1          ; DX = modulo from division
						 ;     Add 1 to give us # between 1 and 23
	mov bx, offset numrandom
	mov [bx],dx            ; Move to numrandom[1] because DX is used 
	pop si
	pop di
	pop cx
	pop ax
	pop bx
	pop dx
	ret
endp random
proc random2
	;part of random number for address of food
	push dx
	push bx
	push ax
	push cx
	push di
	push si
	xor ax,ax            ; xor register to itself same as zeroing register
	int 1ah              ; Int 1ah/ah=0 get timer ticks since midnight in CX:DX
	mov ax,dx            ; Use lower 16 bits (in DX) for random value

	xor dx,dx            ; Compute randval(DX) mod 10 to get num
	mov bx, 77           ;     between 0 and 77
	div bx               ; Divide dx:ax by bx
	add dx, 1         ; DX = modulo from division
						 ;     Add 160 to give us # between 1 and 78
	mov bx, offset numrandom
	mov [bx+1],dx            ; Move to numrandom[2] because DX is used 
	pop si
	pop di
	pop cx
	pop ax
	pop bx
	pop dx
	ret
endp random2
proc startsound
	;when the snake dies a sound will start for a couple seconds
	push ax
	in al, 61h
	or al, 00000011b
	out 61h, al
	mov al, 0b6h
	out 43h, al
	mov ax, 8609
	out 42h, al
	mov al, ah
	out 42h, al
	pop ax
	ret
endp startsound
proc delay
	;a delay for the movement of the snake Horizontally
	push cx 
	push ax
	mov cx, 0FFh
	od:
		mov ax, 1
		next:
		inc ax
		cmp ax, 0AAh
		jnz next
		loop  od
	pop ax
	pop cx
	ret	
endp delay
proc delay1
	;a delay for the movement of the snake Vertically
	push cx 
	push ax
	mov cx, 0FFh
	od1:
		mov ax, 1
		nextd1:
		inc ax
		cmp ax, 0FFh
		jnz nextd1
		loop  od1
	pop ax
	pop cx
	ret	
endp delay1
proc delay2
	;the longest delay for when the snake dies
	push cx 
	push ax
	mov cx, 0FFh
	od2:
		mov ax, 1
		nextd2:
		inc ax
		cmp ax, 0FFFh
		jnz nextd2
		loop  od2
	pop ax
	pop cx
	ret	
endp delay2
proc delay3
	;the shortest delay for the speed of the shot
	push cx 
	push ax
	mov cx, 0FFh
	od23:
		mov ax, 1
		nextd23:
		inc ax
		cmp ax, 0Fh
		jnz nextd23
		loop  od23
	pop ax
	pop cx
	ret	
endp delay3
proc endsound
	;when the snake dies a sound will start so we need to end it
	push ax
	in al, 61h
	and al, 11111100b
	out 61h, al
	pop ax
	ret
endp endsound
proc checkfood
	;check if the head of the snake is in the same address as food1
	push bx
	mov bx, offset food
	cmp di, [bx+2]		;check if the head is equel to food1 address
	pop bx
	jnz con1			;if not return
	push di
	push bx
	mov di, [bx+si]
	sub di, 2
	mov [bx+si+2], di	;a new address adds to the snake as its tail
	pop bx
	pop di
	pop bp
	call showsnake		;put new snake tail on screen
	push bp
	add si, 2			;add to si, 2 because si represents snake size
	cmp si, 200			;check if the snake is at full size
	jnz co1
	call win1			;if snake at full size you win the game
co1:
	call food1			;when eating food we call food1
con1:
	ret
endp checkfood
proc food1
	;put food1 on screen
	push ax
	push di
	push bx
	push cx
again:
	mov ax, 0
	mov cx, 0
	call random			;part of random address
	call random2		;part of random address
	mov bx, offset numrandom
	mov cl, [bx]
	mov al, 80
	mul cl
	mov cx, 0
	mov cl, [bx+1]
	add ax, cx
	shl ax, 1
	mov di, ax			;put in di the random address
	mov bx, offset head
	add bx, si
notonsnake1:			;check if food address is equel to all snake addresses
	cmp di, [bx]
	jz again			;if yes make again a random address
	sub bx, 2
	cmp bx, offset head
	jnz notonsnake1
	mov bx, offset food
	mov [bx+2], di
	mov ah, 44h
	mov al, ' '
	mov [es:di], ax 	;put food on screen
	pop cx
	pop bx
	pop di
	pop ax
	ret
endp food1
proc checksnake
	;check if the head of the snake come across any part of his body
	push bx
	mov bx, offset head
	add bx, si
notdead:
	cmp di, [bx]
	jz isdead
	sub bx, 2
	cmp bx, offset head
	jnz notdead
	pop bx
	ret
isdead:
	call die 			;if snake strikes his on body it is game over
endp checksnake
proc showsnake
	;put on the screen a spesific address of the snake
	push bp 
	mov bp, sp
	push ax
	mov ax, [bp+4]		;move to ax the current color of the snake 
	mov ah, al
	mov al, ' '
	mov [es:di], ax        ; [es:di] - logical address; es*16 + di = 20 bit physical address
	pop ax
	pop bp
	ret
endp showsnake
proc hidesnake
	;will hide the address of the tail of the snake
	push ax
	push di
	push bx
	mov bx, offset head
	mov di, [bx+si]
	mov ah, 0h                    
	mov al, ' '            
	mov [es:di], ax       ; [es:di] - logical address; es*16 + di = 20 bit physical address
	pop bx
	pop di
	pop ax
	ret
endp hidesnake
proc shotright
	;while moving right and clicking space the snake will shot right
	push di
	push ax
shotlop:
	mov ah, 0EEh		;color of the shot
	mov al, ' '
	add di, 2
	call checkfood		;check if shot hit the food
	call checksnake		;check if shot hit the snake if did game over
	call delay3			;a short delay for the shot movment
	mov [es:di], ax
	call delay3
	push ax 
	push cx
	mov ax, di
	mov cl, 160
	div cl
	cmp ah, 158			;check if shot hit right border
	pop cx
	pop ax 
	mov ah, 0h                    
	mov al, ' '            
	mov [es:di], ax  
	jnz shotlop
	pop ax
	pop di
	ret
endp shotright
proc shotleft
	;while moving left and clicking space the snake will shot left
	push di
	push ax
shotlop1:
	mov ah, 0EEh		;color of the shot
	mov al, ' '
	sub di, 2
	call checkfood		;check if shot hit the food
	call checksnake		;check if shot hit the snake if did game over
	call delay3			;a short delay for the shot movment
	mov [es:di], ax
	call delay3
	push ax 
	push cx
	mov ax, di
	mov cl, 160
	div cl
	cmp ah, 0			;check if shot hit left border
	pop cx
	pop ax
	mov ah, 0h                    
	mov al, ' '            
	mov [es:di], ax  
	jnz shotlop1
	pop ax
	pop di
	ret
endp shotleft
proc shotup
	;while moving up and clicking space the snake will shot up
	push di
	push ax
shotlop2:
	mov ah, 0EEh		;color of the shot
	mov al, ' '
	sub di, 160
	call checkfood		;check if shot hit the food
	call checksnake		;check if shot hit the snake if did game over
	call delay3			;a short delay for the shot movment
	mov [es:di], ax
	call delay3
	call delay3
	push ax 
	push cx
	mov ax, di
	mov cx, 316
	sub cx, ax
	pop cx
	pop ax
	mov ah, 0h                    
	mov al, ' '            
	mov [es:di], ax  
	jl shotlop2			;check if shot hit up border
	pop ax
	pop di
	ret
endp shotup
proc shotdown
	;while moving down and clicking space the snake will shot down
	push di
	push ax
shotlop3:
	mov ah, 0EEh		;color of the shot
	mov al, ' '
	add di, 160
	call checkfood		;check if shot hit the food
	call checksnake		;check if shot hit the snake if did game over
	call delay3			;a short delay for the shot movment
	mov [es:di], ax
	call delay3
	call delay3
	push ax 
	mov ax, di
	cmp ax, 3680
	pop ax 
	mov ah, 0h                    
	mov al, ' '            
	mov [es:di], ax  
	jnge shotlop3		;check if shot hit up border
	pop ax
	pop di
	ret
endp shotdown
proc switch1
	;when head moving, all body need to follow
	push ax
	push bx
	mov bx, offset head
	add bx, si
lop:
	mov ax, [bx-2]		
	mov [bx], ax		;will put the before last address in the tail and as going on will put every lower address in [head] in the next place.
	sub bx, 2
	cmp bx, offset head
	jnz lop
	pop bx
	pop ax
	ret
endp switch1
proc score
	push di
	push si
	push ax
	push bx
	push cx
	cmp dx, 10
	jnz notgameover
	mov di, (11*80+38)*2
	jmp yes1
notgameover:
	mov di, 38
yes1:
	mov ax, si
	mov bl, 2
	div bl
	mov bl, 10
	div bl
	inc ah
	mov ch, ah				;if score 14, will put in ah 4, and in al 1 
	mov ah, 7h				; white color
	mov cl, 1
	mov bx, offset ascii	;we need ascii code of ah(4) and al(1)	
	jmp printfirs
printsec:					;check what ascii code is needed and will print ah as al(mov al, ch(ah))
	inc cl
	add di, 2
	mov al, ch
printfirs:					;check what ascii code is needed and will print al
	cmp al, 0
	jnz n1
	mov al, [bx]
	mov [es:di], ax
n1:
	cmp al, 1 
	jnz n2
	mov al, [bx+1]
	mov [es:di], ax
n2:
	cmp al, 2
	jnz n3
	mov al, [bx+2]
	mov [es:di], ax
n3:
	cmp al, 3
	jnz n4
	mov al, [bx+3]
	mov [es:di], ax
n4:
	cmp al, 4
	jnz n5
	mov al, [bx+4]
	mov [es:di], ax
n5:
	cmp al, 5
	jnz n6
	mov al, [bx+5]
	mov [es:di], ax
n6:
	cmp al, 6
	jnz n7
	mov al, [bx+6]
	mov [es:di], ax
n7:
	cmp al, 7
	jnz n8
	mov al, [bx+7]
	mov [es:di], ax
n8:
	cmp al, 8
	jnz n9
	mov al, [bx+8]
	mov [es:di], ax
n9:
	cmp al, 9
	jnz ccc
	mov al, [bx+9]
	mov [es:di], ax
ccc:
	cmp cl, 1
	jz printsec
	pop cx
	pop bx
	pop ax
	pop si
	pop di
	ret
endp score
proc die
	;game over, will start with a sound, end after a couple seconds and will print game over screen and snake score
	call startsound
	call delay2
	call endsound
	mov cx, offset gameOver
	push cx
	call displayOnScreen
	mov dx, 10
	call score
	call delay2
	jmp exit
endp die
proc win1
	;if snake wins print win screen
	call startsound
	call delay2
	call endsound
	mov cx, offset win
	push cx
	call displayOnScreen
	call delay2	
	jmp exit
endp win1
proc leftborder
;check if snake touches the leftborder
	push ax 
	push cx
	mov ax, di
	mov cl, 160
	div cl
	cmp ah, 0
	pop cx
	pop ax
	jnz nosound
	call die
nosound:
	ret
endp leftborder
proc rightborder
;check if snake touches the rightborder
	push ax 
	push cx
	mov ax, di
	mov cl, 160
	div cl
	cmp ah, 158
	pop cx
	pop ax 
	jnz nosound1
	call die
nosound1:
	ret
endp rightborder
proc upBorder
;check if snake touches the upborder
	push ax 
	push cx
	mov ax, di
	mov cx, 316
	sub cx, ax
	pop cx
	pop ax
	jl nosound2
	call die
nosound2:
	ret
endp upBorder	
proc downBorder
;check if snake touches the downborder
	push ax 
	mov ax, di
	cmp ax, 3680
	pop ax 
	jnge nosound3
	call die
nosound3:
	ret
endp downBorder
start:
	mov ax, @data          ; start address of segment data
	mov ds, ax
	mov ax, 0b800h         ; start address of text video memory
	                       ; 80 columns * 25 rows * 2 bytes per character:
						   ; low byte = character code; high byte = attribute (background+color)
	mov es, ax
	
	mov di,  (13*80+39)*2  ; the address of the middle of display
	
;------------we will see preFrame until player press any key	
    mov cx, offset preFrame
	push cx
	call displayOnScreen             ; show pre frame
	
waitforAnyKey:
	
	mov ah, 1                ; check keyboard status 
    int 16h
	jz waitforAnyKey         ; keyboard buffer empty, we still waiting for input
	
	mov ah, 0                ; we have get code in keyboard buffer, 
	                         ; we got the scan code in <ah> register 
							 ; and remove this code from keyboard buffer
	int 16h
    
;============================   Main Loop =================================
    mov cx, offset menu
	push cx
	call displayOnScreen             ; show menu
waitfordata:
	
	mov ah, 1                ; check keyboard status 
    int 16h
	jz waitfordata           ; keyboard buffer empty, we still waiting for input
	
	mov ah, 0                ; we have get code in keyboard buffer, 
	                         ; we will get the scan code in <ah> register 
							 ; and remove this code from keyboard buffer
	int 16h
	
; if "ESC" has been pressed -> exit the program
	cmp ah, 1h                ; is it "ESC" button?  [1 is the scan code of ESC]
	jne skip05
	jmp exit
skip05:
; if "m" has been pressed -> output menu screen
	cmp ah,31h                ; is it "M" button?  [32 is the scan code of "M"]
	jne skip1
	mov cx, offset menu
	push cx
	call displayOnScreen              ; show menu
	mov [nowPause], true           
	jmp waitfordata
skip1:
; if "m" has been pressed -> output menu screen
	cmp ah,32h                ; is it "M" button?  [32 is the scan code of "M"]
	jne skip15
	mov cx, offset menu
	push cx
	call displayOnScreen              ; show menu
	mov [nowPause], true           
	jmp waitfordata
skip15:
; if "r" has been pressed -> output menu screen
	cmp ah,13h                ; is it "M" button?  [32 is the scan code of "M"]
	jne skip2
	mov cx, offset rules
	push cx
	call displayOnScreen              ; show menu
	mov [nowPause], true           
	jmp waitfordata	
skip2:
; if "i" has been pressed -> output instructions screen
	cmp ah,17h
	jne skip3
	mov cx, offset instructions
	push cx
	call displayOnScreen              ; show instructions
	mov [nowPause], true
	jmp waitfordata
	
skip3:
; if "Enter" has been pressed -> output game body screen
	cmp ah,01Ch
	je ddd
	jmp skip4
ddd:
	mov cx, offset blank
	push cx
	call displayOnScreen 
	
	mov ax, 0b800h         ; start address of text video memory
	                       ; 80 columns * 25 rows * 2 bytes per character:
						   ; low byte = character code; high byte = attribute (background+color)
	mov es, ax
	mov dx, offset colors	;dx is in charge of the current color
	mov si, 4				;si is in charge of the current size of the snake
	mov di, (11*80+39)*2	;middle of screen for the first tail of the snake
	mov bx, 0A6h			;first color
	push bx
	mov bx, offset head
	call showsnake
	mov [bx+4], di
	mov di, (11*80+40)*2
	call showsnake
	mov [bx+2], di
	mov di, (11*80+41)*2	;head of snake
	call showsnake
	mov [bx], di
	call food1
	jmp first
odd:						;kind of loop if not touching the keyboard
	jmp right
first:
	mov ah, 1                ; check keyboard status 
    int 16h         		 ; keyboard buffer empty, we still waiting for input
	je odd					 ; empty so snake still moving to the same current direction
	mov ah, 0                ; we have get code in keyboard buffer, 
	                         ; we will get the scan code in <ah> register 
							 ; and remove this code from keyboard buffer
	int 16h	
shot:
	cmp ah, 39h				;check if snake shot
	jnz ecs
	cmp [way], 4dh			;check if shotright
	jnz notright
	call shotright
notright:
	cmp [way], 4bh			;check if shotleft
	jnz notleft
	call shotleft
notleft:
	cmp [way], 48h			;check if shotup
	jnz notup
	call shotup
notup:
	cmp [way], 50h			;check if shotdown
	jnz ecs
	call shotdown
ecs:	
	cmp ah, 1h                ; is it esc button?
	jne color1
	call die
	jmp exit
color1:
	cmp ah, 2Eh				;is it c button for changing colors
	jne go1
	push bx
	mov bx, dx
	mov bp, [bx]
	inc dx
	cmp dx, 6				;if [colors] is in the end
	jnz chacol
	mov dx, offset colors	;if yes so start again the colors
chacol:
	pop bx
	push bp
go1:						;check if press of direction is opposite to the current way
	cmp ah, 4dh
	jnz next1
	push ax
	push dx
	mov dl, [way]
	sub ah, dl
	cmp ah, 2
	pop dx
	pop ax
	jz first
	mov [way], ah
next1:						;check if press of direction is opposite to the current way
	cmp ah, 4bh
	jnz next2
	push ax
	push dx
	mov dl, [way]
	sub dl, ah
	cmp dl, 2
	pop dx
	pop ax
	jz jmpstop
	mov [way], ah
next2:						;check if press of direction is opposite to the current way
	cmp ah, 50h
	jnz next3
	push ax
	push dx
	mov dl, [way]
	sub ah, dl
	cmp ah, 8
	pop dx
	pop ax
	jz jmpstop
	mov [way], ah
	jmp next3
jmpstop:						;jump stop to far....
	jmp first
next3:						;check if press of direction is opposite to the current way
	cmp ah, 48h
	jnz next4
	push ax
	push dx
	mov dl, [way]
	sub dl, ah
	cmp dl, 8
	pop dx
	pop ax
	jnz go2
	jmp first
go2:
	mov [way], ah
next4:	
	call endsound
right:
	cmp [way], 4dh             ; is it right button?
	jne left
	call delay				;delay for Horizontal movement
	call rightborder
	add di, 2                 ; go right
	call checksnake
	call hidesnake
	call showsnake
	call switch1			;switch1 will change the snake to his next addresses exsept head
	push cx
	mov cx, [bx]
	add cx, 2				;change head to the next address
	mov [bx], cx
	pop cx
	call checkfood
	call score
	jmp first				;return to check buffer
left:
	cmp [way], 4bh			;is it left button?
	jne up
	call delay				;delay for Horizontal movement
	call leftborder
	sub di, 2				; go left
	call checksnake
	call hidesnake
	call showsnake
	call switch1			;switch1 will change the snake to his next addresses exsept head
	push cx
	mov cx, [bx]
	sub cx, 2				;change head to the next address
	mov [bx], cx
	pop cx	
	call checkfood
	call score
	jmp first				;return to check buffer
up:
	cmp [way], 48h			;is it up button?
	jne down
	call delay1				;delay1 for Vertical movement
	call upBorder
	sub di, 160				; go up
	call checksnake
	call hidesnake
	call showsnake
	call switch1			;switch1 will change the snake to his next addresses exsept head
	push cx
	mov cx, [bx]
	sub cx, 160				;change head to the next address
	mov [bx], cx
	pop cx	
	call checkfood
	call score
	jmp first				;return to check buffer
down:
	cmp [way], 50h			;is it down button?
	je dodo
	jmp first
dodo:
	call delay1				;delay1 for Vertical movement
	call downBorder
	add di, 160				; go down
	call checksnake
	call hidesnake
	call showsnake
	call switch1 			;switch1 will change the snake to his next addresses exsept head
	push cx
	mov cx, [bx]
	add cx, 160				;change head to the next address
	mov [bx], cx
	pop cx
	call checkfood
	call score
	jmp first				;return to check buffer
	
skip4:						;if did not change screens wait for data
	jmp waitfordata
	

proc displayOnScreen 
;this procedure get info variable address  as parameter via stack 
;and displays one of the screens : menu, pause, results, game, instructions, pre frame
    push bp
	mov bp, sp
	
	push dx
	push ax

	mov dx,[bp+4]	
	mov ah,09h
	int 21h

	pop ax
	pop dx
	pop bp
	ret 2
endp displayOnScreen
exit:
	mov ax, 4c00h
	int 21h
END start