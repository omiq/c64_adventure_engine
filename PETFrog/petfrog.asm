 processor 6502
	org $400
	; Starting new memory block at $400
StartBlock400
	.byte    $0, $0E, $08, $0A, $00, $9E, $20, $28
	.byte   $31,$30,$34,$30
	.byte    $29, $00, $00, $00
	; Ending memory block
EndBlock400
	org $410
	; Starting new memory block at $410
StartBlock410
PETFrog
	; LineNumber: 646
	jmp block1
	; LineNumber: 3
oldti = $8f
	; LineNumber: 3
ti = $90
	; LineNumber: 17
KEYPRESS	dc.b	$ff
	; LineNumber: 19
blk	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 20
by	
	dc.b	$20, $02, $19, $20, $03, $08, $12, $09, $13
	dc.b	$20, $07, $01, $12, $12, $05, $14, $14, $20
	dc.b	$30, $31, $2f, $32, $30, $32, $31, $20, $20
	dc.b	$20, 0
	; LineNumber: 21
url	
	dc.b	$20, $00, $0d, $01, $0b, $05, $12, $08, $01
	dc.b	$03, $0b, $13, $20, $0d, $01, $0b, $05, $12
	dc.b	$08, $01, $03, $0b, $13, $2e, $03, $0f, $0d
	dc.b	$20, 0
	; LineNumber: 22
over	
	dc.b	$20, $07, $01, $0d, $05, $20, $0f, $16, $05
	dc.b	$12, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 23
score	
	dc.b	$20, $19, $0f, $15, $20, $13, $03, $0f, $12
	dc.b	$05, $04, $3a, $20, $20, $20, $20, $20, $20
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 24
space	
	dc.b	$20, $10, $12, $05, $13, $13, $20, $13, $10
	dc.b	$01, $03, $05, $20, $14, $0f, $20, $03, $0f
	dc.b	$0e, $14, $09, $0e, $15, $05, $20, $20, $20
	dc.b	$20, 0
	; LineNumber: 26
ALIVE	dc.b	$01
	; LineNumber: 27
WON_GAME	dc.b	$00
	; LineNumber: 33
frogcharA	dc.b	$d6
	; LineNumber: 34
frogcharB	dc.b	$56
	; LineNumber: 35
frog_x	dc.b	$14
	; LineNumber: 35
frog_old_x	dc.b	$14
	; LineNumber: 36
frog_y	dc.b	$18
	; LineNumber: 36
frog_old_y	dc.b	$18
	; LineNumber: 37
previous_tile	dc.b	$20
	; LineNumber: 38
player_lives	dc.b	$00
	; LineNumber: 39
player_score	dc.w	$00
	; LineNumber: 41
arr_crockr	dc.b $0c0, $0a2, $0dc, $0dc, $0dc, $0dc, $0dc, $062
	dc.b $079
	; LineNumber: 42
str_crockr	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 44
arr_crockl	dc.b $079, $062, $0dc, $0dc, $0dc, $0dc, $0dc, $0a2
	dc.b $0c0
	; LineNumber: 45
str_crockl	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 47
arr_logl	dc.b $0a8, $0a8, $0a8, $0a8, $0d1
	; LineNumber: 48
str_logl	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 50
arr_logr	dc.b $0d1, $0a9, $0a9, $0a9, $0a9
	; LineNumber: 51
str_logr	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 53
arr_carl	dc.b $0f0, $0cf, $0d0, $0e0
	; LineNumber: 54
str_cart	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 55
arr_carr	dc.b $0ed, $0d7, $0d7, $0a0
	; LineNumber: 56
str_carb	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 64
arr_truckb_r	dc.b $0a0, $0d7, $062, $0d7, $0f1, $0d7, $0fd, $0a0
	; LineNumber: 65
str_truckb_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 66
arr_truckt_r	dc.b $0e0, $060, $060, $060, $0fe, $0eb, $0ee, $0e0
	; LineNumber: 67
str_truckt_r	
	dc.b	$20, $20, $20, $20, $20, $20, $20, $20, $20
	dc.b	0 
	; LineNumber: 72
obstacles_y	dc.b $04, $05, $06, $07, $0c, $0d, $0f, $010
	dc.b $012, $013, $015, $016
	; LineNumber: 73
strip_direction	dc.b $01, $00, $01, $00, $01, $01, $01, $01
	dc.b $00, $00, $00, $00
	; LineNumber: 75
level_strips	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	dc.b 0, 0, 0, 0, 0, 0, 0, 0
	; LineNumber: 78
obstacles_x_rl	dc.b	0
	; LineNumber: 78
obstacles_x_lr	dc.b	0
	; LineNumber: 82
logo	dc.b $072, $049, $070, $06e, $070, $072, $06e, $055
	dc.b $049, $020, $020, $020, $020, $06b, $04b, $06b
	dc.b $020, $020, $042, $020, $06b, $055, $055, $049
	dc.b $055, $049, $071, $020, $06d, $07d, $020, $071
	dc.b $020, $04b, $071, $04a, $04b, $04a, $042, $078
	dc.b $078, $078, $078, $078, $078, $078, $078, $078
	dc.b $078, $078, $04a, $04b
	; LineNumber: 90
title_screen_frog_pointer	= $02
	; LineNumber: 91
title_screen_frog	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $06c, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07b, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $06c, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $07b, $020, $020, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $0f5, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $020, $020, $0a0, $0a0, $0a0, $0a0
	dc.b $07e, $020, $020, $07c, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $0a0, $07e, $0e2, $0e2, $0e2
	dc.b $07c, $0a0, $061, $020, $0a0, $0a0, $0a0, $07e
	dc.b $020, $020, $020, $020, $0e1, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $076, $0a0, $020, $020, $020, $020
	dc.b $020, $0a0, $061, $020, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $076, $0a0, $020, $020, $020, $020
	dc.b $020, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $0a0, $07b, $020, $020, $020
	dc.b $06c, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $062, $0a0, $0a0, $062, $020, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $068
	dc.b $066, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $062, $0a0, $0a0, $0a0, $062, $062, $062
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0ec, $062, $062, $0fb, $0a0, $0a0, $0a0, $020
	dc.b $020, $068, $020, $020, $020, $020, $020, $066
	dc.b $066, $05c, $020, $020, $020, $020, $020, $020
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07e, $020
	dc.b $020, $066, $05c, $020, $020, $020, $020, $066
	dc.b $066, $05c, $020, $020, $020, $020, $020, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07b, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $066, $020, $020, $020, $020, $020, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $0a0, $0ec
	dc.b $0fb, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $07b
	dc.b $066, $020, $020, $066, $020, $020, $020, $020
	dc.b $068, $066, $020, $020, $020, $0e1, $0a0, $06c
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $066, $068, $020, $066, $066, $020, $020, $066
	dc.b $066, $066, $05c, $020, $020, $0a0, $0a0, $0a0
	dc.b $020, $0fb, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0ec, $020, $0a0
	dc.b $066, $066, $020, $020, $066, $020, $020, $066
	dc.b $066, $066, $066, $05c, $020, $0a0, $0a0, $0a0
	dc.b $07b, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $06c, $0a0
	dc.b $066, $066, $066, $020, $066, $066, $020, $066
	dc.b $066, $020, $066, $05c, $020, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $062, $062, $062
	dc.b $062, $062, $062, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $0fe, $0a0, $0a0
	dc.b $066, $066, $066, $066, $020, $066, $066, $020
	dc.b $066, $066, $066, $05c, $020, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0a0, $0a0, $0a0, $0a0
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $020, $020, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0ec
	dc.b $0e2, $0e2, $0ec, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $020, $0e1, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0ec
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $020, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $020
	dc.b $066, $066, $05c, $020, $066, $066, $066, $066
	dc.b $020, $020, $066, $066, $066, $066, $020, $020
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $061, $068
	dc.b $066, $066, $020, $020, $020, $066, $066, $05c
	dc.b $020, $020, $066, $066, $066, $066, $066, $020
	dc.b $020, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0ec, $020, $066
	dc.b $066, $05c, $020, $020, $020, $066, $066, $020
	dc.b $020, $020, $020, $066, $066, $066, $066, $066
	dc.b $020, $020, $0e2, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0ec, $020, $066, $066
	dc.b $066, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $066, $066
	dc.b $066, $020, $020, $020, $0e2, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0ec, $020, $020, $066, $066, $066
	dc.b $066, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $066
	dc.b $066, $066, $066, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $066, $066, $066, $066, $066
	; LineNumber: 122
petscii_pointer	= $04
	; LineNumber: 156
level2	dc.b $0cc, $0ef, $0fa, $013, $03, $0f, $012, $05
	dc.b $03a, $039, $039, $039, $0cc, $0ef, $0ef, $0ef
	dc.b $0a0, $090, $085, $094, $086, $092, $08f, $087
	dc.b $0a0, $0ef, $0ef, $0ef, $0ef, $0fa, $0c, $09
	dc.b $016, $05, $013, $03a, $033, $0cc, $0ef, $0fa
	dc.b $020, $068, $068, $020, $068, $068, $068, $068
	dc.b $068, $068, $020, $068, $068, $068, $068, $068
	dc.b $068, $068, $020, $068, $068, $068, $068, $068
	dc.b $068, $068, $068, $068, $068, $068, $068, $020
	dc.b $068, $068, $068, $068, $068, $020, $068, $020
	dc.b $066, $05c, $020, $020, $020, $020, $066, $066
	dc.b $020, $020, $020, $020, $020, $066, $066, $020
	dc.b $020, $020, $020, $020, $066, $066, $066, $020
	dc.b $020, $020, $020, $066, $066, $020, $020, $020
	dc.b $020, $066, $066, $020, $020, $020, $020, $05c
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $020
	dc.b $066, $068, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $068, $068, $068
	dc.b $068, $068, $020, $020, $020, $020, $020, $020
	dc.b $020, $020, $020, $020, $020, $020, $020, $068
	dc.b $068, $068, $020, $020, $020, $020, $068, $066
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3, $0c3
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad, $0ad
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0, $0a0
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2, $0e2
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	dc.b $066, $066, $066, $066, $066, $066, $066, $066
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
initdiv16x8_divisor = $4c     ;$59 used for hi-byte
initdiv16x8_dividend = $4e	  ;$fc used for hi-byte
initdiv16x8_remainder = $50	  ;$fe used for hi-byte
initdiv16x8_result = $4e ;save memory by reusing divident to store the result
divide16x8	lda #0	        ;preset remainder to 0
	sta initdiv16x8_remainder
	sta initdiv16x8_remainder+1
	ldx #16	        ;repeat for each bit: ...
divloop16	asl initdiv16x8_dividend	;dividend lb & hb*2, msb -> Carry
	rol initdiv16x8_dividend+1
	rol initdiv16x8_remainder	;remainder lb & hb * 2 + msb from carry
	rol initdiv16x8_remainder+1
	lda initdiv16x8_remainder
	sec
	sbc initdiv16x8_divisor	;substract divisor to see if it fits in
	tay	        ;lb result -> Y, for we may need it later
	lda initdiv16x8_remainder+1
	sbc initdiv16x8_divisor+1
	bcc skip16	;if carry=0 then divisor didn't fit in yet
	sta initdiv16x8_remainder+1	;else save substraction result as new remainder,
	sty initdiv16x8_remainder
	inc initdiv16x8_result	;and INCrement result cause divisor fit in 1 times
skip16	dex
	bne divloop16
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init16x8mul
	;    Procedure type : Built-in function
	;    Requires initialization : no
mul16x8_num1Hi = $4c
mul16x8_num1 = $4e
mul16x8_num2 = $50
mul16x8_procedure
	lda #$00
	ldy #$00
	beq mul16x8_enterLoop
mul16x8_doAdd
	clc
	adc mul16x8_num1
	tax
	tya
	adc mul16x8_num1Hi
	tay
	txa
mul16x8_loop
	asl mul16x8_num1
	rol mul16x8_num1Hi
mul16x8_enterLoop  ; accumulating multiply entry point (enter with .A=lo, .Y=hi)
	lsr mul16x8_num2
	bcs mul16x8_doAdd
	bne mul16x8_loop
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init8x8div
	;    Procedure type : Built-in function
	;    Requires initialization : no
div8x8_c = $4c
div8x8_d = $4e
div8x8_e = $50
	; Normal 8x8 bin div
div8x8_procedure
	lda #$00
	ldx #$07
	clc
div8x8_loop1 rol div8x8_d
	rol
	cmp div8x8_c
	bcc div8x8_loop2
	sbc div8x8_c
div8x8_loop2 dex
	bpl div8x8_loop1
	rol div8x8_d
	lda div8x8_d
div8x8_def_end
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initeightbitmul
	;    Procedure type : Built-in function
	;    Requires initialization : no
multiplier = $4c
multiplier_a = $4e
multiply_eightbit
	cpx #$00
	beq mul_end
	dex
	stx $4e
	lsr
	sta multiplier
	lda #$00
	ldx #$08
mul_loop
	bcc mul_skip
mul_mod
	adc multiplier_a
mul_skip
	ror
	ror multiplier
	dex
	bne mul_loop
	ldx multiplier
	rts
mul_end
	txa
	rts
initeightbitmul_multiply_eightbit2
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : initmoveto
	;    Procedure type : Built-in function
	;    Requires initialization : no
	jmp initmoveto_moveto3
screenmemory =  $fe
colormemory =  $fc
screen_x = $4c
screen_y = $4e
SetScreenPosition
	sta screenmemory+1
	lda #0
	sta screenmemory
	ldy screen_y
	beq sydone
syloop
	clc
	adc #80
	bcc sskip
	inc screenmemory+1
sskip
	dey
	bne syloop
sydone
	ldx screen_x
	beq sxdone
	clc
	adc screen_x
	bcc sxdone
	inc screenmemory+1
sxdone
	sta screenmemory
	rts
initmoveto_moveto3
	rts
	
; //  1    2   3  4   5   6   7   8   9  10  11  12  13
; //1   2   3   4   5   6   7   8   9   0   1   2   3   4   5   6   7   8   9   20  1   2   3   4   5   6   7   8   9   30  1   2   3   4   5   6   7   8   9   40   
; // =============================================================================================== 
	; NodeProcedureDecl -1
	; ***********  Defining procedure : cls
	;    Procedure type : User-defined procedure
	; LineNumber: 192
cls
	; LineNumber: 193
	; Clear screen with offset
	lda #$20
	ldx #$fa
cls_clearloop5
	dex
	sta $0000+$8000,x
	sta $00fa+$8000,x
	sta $01f4+$8000,x
	sta $02ee+$8000,x
	sta $03e8+$8000,x
	sta $04e2+$8000,x
	sta $05dc+$8000,x
	sta $06d6+$8000,x
	bne cls_clearloop5
	; LineNumber: 194
	; MoveTo optimization
	lda #$00
	sta screenmemory
	lda #>$8000
	clc
	adc #$00
	sta screenmemory+1
	; LineNumber: 195
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : getkey
	;    Procedure type : User-defined procedure
	; LineNumber: 200
getkey
	; LineNumber: 203
	; LineNumber: 204
	; Peek
	lda $97 + $0
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : getat
	;    Procedure type : User-defined procedure
	; LineNumber: 222
	; LineNumber: 220
szp	= $08
	; LineNumber: 218
sx	dc.b	0
	; LineNumber: 218
sy	dc.b	0
getat_block7
getat
	; LineNumber: 223
	; Assigning single variable : szp
	; Generic 16 bit op
	ldy #0
	lda sx
getat_rightvarInteger_var10 = $54
	sta getat_rightvarInteger_var10
	sty getat_rightvarInteger_var10+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
getat_rightvarInteger_var13 = $56
	sta getat_rightvarInteger_var13
	sty getat_rightvarInteger_var13+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda sy
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc getat_rightvarInteger_var13
getat_wordAdd11
	sta getat_rightvarInteger_var13
	; High-bit binop
	tya
	adc getat_rightvarInteger_var13+1
	tay
	lda getat_rightvarInteger_var13
	; Low bit binop:
	clc
	adc getat_rightvarInteger_var10
getat_wordAdd8
	sta getat_rightvarInteger_var10
	; High-bit binop
	tya
	adc getat_rightvarInteger_var10+1
	tay
	lda getat_rightvarInteger_var10
	sta szp
	sty szp+1
	; LineNumber: 224
	; LineNumber: 225
	; Load pointer array
	ldy #$0
	lda (szp),y
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : textat
	;    Procedure type : User-defined procedure
	; LineNumber: 231
	; LineNumber: 229
zp	= $08
	; LineNumber: 227
x	dc.b	0
	; LineNumber: 227
y	dc.b	0
	; LineNumber: 227
this_str	= $16
	; LineNumber: 227
str_len	dc.b	0
textat_block14
textat
	; LineNumber: 232
	; Assigning single variable : zp
	; Generic 16 bit op
	ldy #0
	lda x
textat_rightvarInteger_var17 = $54
	sta textat_rightvarInteger_var17
	sty textat_rightvarInteger_var17+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
textat_rightvarInteger_var20 = $56
	sta textat_rightvarInteger_var20
	sty textat_rightvarInteger_var20+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc textat_rightvarInteger_var20
textat_wordAdd18
	sta textat_rightvarInteger_var20
	; High-bit binop
	tya
	adc textat_rightvarInteger_var20+1
	tay
	lda textat_rightvarInteger_var20
	; Low bit binop:
	clc
	adc textat_rightvarInteger_var17
textat_wordAdd15
	sta textat_rightvarInteger_var17
	; High-bit binop
	tya
	adc textat_rightvarInteger_var17+1
	tay
	lda textat_rightvarInteger_var17
	sta zp
	sty zp+1
	; LineNumber: 232
	; memcpyfast
	ldy str_len
	dey
textat_memcpy21
	lda (this_str),y
	sta (zp),y
	dey
	bpl textat_memcpy21
	; LineNumber: 234
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : numberat
	;    Procedure type : User-defined procedure
	; LineNumber: 242
	; LineNumber: 239
num_p	= $08
	; LineNumber: 240
num_str	
	dc.b	$30, $30, $30, $30, $30, 0
	; LineNumber: 237
num_x	dc.b	0
	; LineNumber: 237
num_y	dc.b	0
	; LineNumber: 237
num	dc.w	0
	; LineNumber: 237
num_len	dc.b	0
numberat_block22
numberat
	; LineNumber: 244
	; Binary clause INTEGER: GREATEREQUAL
	; Compare INTEGER with pure num / var optimization. GREATER. 
	lda num+1   ; compare high bytes
	cmp #$00 ;keep
	bcc numberat_localfailed38
	bne numberat_ConditionalTrueBlock24
	lda num
	cmp #$0a ;keep
	bcc numberat_localfailed38
	jmp numberat_ConditionalTrueBlock24
numberat_localfailed38
	jmp numberat_elseblock25
numberat_ConditionalTrueBlock24: ;Main true block ;keep 
	; LineNumber: 245
	; LineNumber: 247
	
; // Put each digit as PETSCII into the string
	; Poke
	lda #$2
	sta $50
	; 8 bit binop
	; Add/sub where right value is constant number
	; Modulo
	lda #$a
numberat_val_var40 = $54
	sta numberat_val_var40
	; integer assignment NodeVar
	ldy num+1 ; Next one
	lda num
	sec
numberat_modulo41
	sbc numberat_val_var40
	bcs numberat_modulo41
	adc numberat_val_var40
	clc
	adc #$30
	 ; end add / sub var with constant
	ldx $50
	sta num_str,x
	; LineNumber: 249
	; Poke
	lda #$1
	sta $50
	; 8 bit binop
	; Add/sub where right value is constant number
	; Modulo
	lda #$a
numberat_val_var42 = $54
	sta numberat_val_var42
	; Right is PURE NUMERIC : Is word =1
	; 16x8 div
	; integer assignment NodeVar
	ldy num+1 ; Next one
	lda num
	sta initdiv16x8_dividend
	sty initdiv16x8_dividend+1
	ldy #0
	lda #$a
	sta initdiv16x8_divisor
	sty initdiv16x8_divisor+1
	jsr divide16x8
	lda initdiv16x8_dividend
	ldy initdiv16x8_dividend+1
	sec
numberat_modulo43
	sbc numberat_val_var42
	bcs numberat_modulo43
	adc numberat_val_var42
	clc
	adc #$30
	 ; end add / sub var with constant
	ldx $50
	sta num_str,x
	; LineNumber: 250
	; Poke
	; Optimization: shift is zero
	; Generic 16 bit op
	ldy #0
	lda #$30
numberat_rightvarInteger_var46 = $54
	sta numberat_rightvarInteger_var46
	sty numberat_rightvarInteger_var46+1
	; Right is PURE NUMERIC : Is word =1
	; 16x8 div
	; integer assignment NodeVar
	ldy num+1 ; Next one
	lda num
	sta initdiv16x8_dividend
	sty initdiv16x8_dividend+1
	ldy #0
	lda #$64
	sta initdiv16x8_divisor
	sty initdiv16x8_divisor+1
	jsr divide16x8
	lda initdiv16x8_dividend
	ldy initdiv16x8_dividend+1
	; Low bit binop:
	clc
	adc numberat_rightvarInteger_var46
numberat_wordAdd44
	sta numberat_rightvarInteger_var46
	; High-bit binop
	tya
	adc numberat_rightvarInteger_var46+1
	tay
	lda numberat_rightvarInteger_var46
	sta num_str
	; LineNumber: 254
	jmp numberat_elsedoneblock26
numberat_elseblock25
	; LineNumber: 255
	; LineNumber: 256
	; Poke
	; Optimization: shift is zero
	; HandleVarBinopB16bit
	ldy #0 ; ::HandleVarBinopB16bit 0
	lda #$30
numberat_rightvarInteger_var49 = $54
	sta numberat_rightvarInteger_var49
	sty numberat_rightvarInteger_var49+1
	lda num+1
	clc
	adc numberat_rightvarInteger_var49+1
	tay
	lda num
	clc
	adc numberat_rightvarInteger_var49
	bcc numberat_wordAdd48
	iny
numberat_wordAdd48
	sta num_str
	; LineNumber: 257
numberat_elsedoneblock26
	; LineNumber: 260
	; Assigning single variable : num_p
	; Generic 16 bit op
	ldy #0
	lda num_x
numberat_rightvarInteger_var52 = $54
	sta numberat_rightvarInteger_var52
	sty numberat_rightvarInteger_var52+1
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
numberat_rightvarInteger_var55 = $56
	sta numberat_rightvarInteger_var55
	sty numberat_rightvarInteger_var55+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda num_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc numberat_rightvarInteger_var55
numberat_wordAdd53
	sta numberat_rightvarInteger_var55
	; High-bit binop
	tya
	adc numberat_rightvarInteger_var55+1
	tay
	lda numberat_rightvarInteger_var55
	; Low bit binop:
	clc
	adc numberat_rightvarInteger_var52
numberat_wordAdd50
	sta numberat_rightvarInteger_var52
	; High-bit binop
	tya
	adc numberat_rightvarInteger_var52+1
	tay
	lda numberat_rightvarInteger_var52
	sta num_p
	sty num_p+1
	; LineNumber: 260
	; memcpy
	ldy #0
numberat_memcpy56
	lda num_str+ $00,y
	sta (num_p),y
	iny
	cpy num_len
	bne numberat_memcpy56
	; LineNumber: 262
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : title_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 267
title_screen
	; LineNumber: 270
	
; // Set up pointer to array:
	; Assigning single variable : title_screen_frog_pointer
	lda #<title_screen_frog
	ldx #>title_screen_frog
	sta title_screen_frog_pointer
	stx title_screen_frog_pointer+1
	; LineNumber: 272
	jsr cls
	; LineNumber: 275
	
; // Draw the frog
	; Copy full screen
	lda title_screen_frog_pointer
	sta $4c
	lda title_screen_frog_pointer+1
	sta $4c+1
	lda screenmemory
	sta $4e
	lda screenmemory+1
	sta $4e+1
	; CopyFullscreen with pointers
	ldx #3
title_screen_outer58
	ldy #0
title_screen_inner59
	lda ($4c),y
	sta ($4e),y
	dey
	bne title_screen_inner59
	inc $4c+1
	inc $4e+1
	dex
	bne title_screen_outer58
	ldy #0
title_screen_final60
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne title_screen_final60
	; LineNumber: 276
	; memcpyfast
	ldx #12
title_screen_memcpy61
	lda logo+ $00,x
	sta $8000,x
	dex
	bpl title_screen_memcpy61
	; LineNumber: 277
	; memcpyfast
	ldx #12
title_screen_memcpy62
	lda logo+ $0d,x
	sta $8028,x
	dex
	bpl title_screen_memcpy62
	; LineNumber: 278
	; memcpyfast
	ldx #12
title_screen_memcpy63
	lda logo+ $1a,x
	sta $8050,x
	dex
	bpl title_screen_memcpy63
	; LineNumber: 279
	; memcpyfast
	ldx #12
title_screen_memcpy64
	lda logo+ $27,x
	sta $8078,x
	dex
	bpl title_screen_memcpy64
	; LineNumber: 283
title_screen_while65
	; Binary clause Simplified: NOTEQUALS
	jsr getkey
	; Compare with pure num / var optimization
	cmp #$20;keep
	beq title_screen_elsedoneblock68
title_screen_ConditionalTrueBlock66: ;Main true block ;keep 
	; LineNumber: 284
	; LineNumber: 285
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$15
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<blk
	ldx #>blk
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 286
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$16
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<by
	ldx #>by
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 287
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$17
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<url
	ldx #>url
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 288
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$18
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<space
	ldx #>space
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 289
	jmp title_screen_while65
title_screen_elsedoneblock68
	; LineNumber: 291
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : score_screen
	;    Procedure type : User-defined procedure
	; LineNumber: 294
score_screen
	; LineNumber: 295
	jsr cls
	; LineNumber: 296
score_screen_while72
	; Binary clause Simplified: NOTEQUALS
	jsr getkey
	; Compare with pure num / var optimization
	cmp #$20;keep
	beq score_screen_localfailed81
	jmp score_screen_ConditionalTrueBlock73
score_screen_localfailed81
	jmp score_screen_elsedoneblock75
score_screen_ConditionalTrueBlock73: ;Main true block ;keep 
	; LineNumber: 297
	; LineNumber: 298
	; memcpyfast
	ldx #12
score_screen_memcpy83
	lda logo+ $00,x
	sta $8000,x
	dex
	bpl score_screen_memcpy83
	; LineNumber: 299
	; memcpyfast
	ldx #12
score_screen_memcpy84
	lda logo+ $0d,x
	sta $8028,x
	dex
	bpl score_screen_memcpy84
	; LineNumber: 300
	; memcpyfast
	ldx #12
score_screen_memcpy85
	lda logo+ $1a,x
	sta $8050,x
	dex
	bpl score_screen_memcpy85
	; LineNumber: 301
	; memcpyfast
	ldx #12
score_screen_memcpy86
	lda logo+ $27,x
	sta $8078,x
	dex
	bpl score_screen_memcpy86
	; LineNumber: 304
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$6
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<over
	ldx #>over
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 305
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$7
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<score
	ldx #>score
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 306
	; Assigning single variable : num_x
	lda #$f
	; Calling storevariable
	sta num_x
	; Assigning single variable : num_y
	lda #$7
	; Calling storevariable
	sta num_y
	; Assigning single variable : num
	; integer assignment NodeVar
	ldy player_score+1 ; Next one
	lda player_score
	; Calling storevariable
	sta num
	sty num+1
	; Assigning single variable : num_len
	lda #$3
	; Calling storevariable
	sta num_len
	jsr numberat
	; LineNumber: 307
	; Assigning single variable : x
	lda #$2
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$a
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<space
	ldx #>space
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1c
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 308
	jmp score_screen_while72
score_screen_elsedoneblock75
	; LineNumber: 310
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : sprite_xy
	;    Procedure type : User-defined procedure
	; LineNumber: 316
	; LineNumber: 314
spr_p	= $08
	; LineNumber: 312
spr_x	dc.b	0
	; LineNumber: 312
spr_y	dc.b	0
	; LineNumber: 312
source_str	= $16
	; LineNumber: 312
spr_len	dc.b	0
sprite_xy_block87
sprite_xy
	; LineNumber: 317
	; Assigning single variable : spr_p
	; Generic 16 bit op
	ldy #0
	lda spr_x
sprite_xy_rightvarInteger_var90 = $54
	sta sprite_xy_rightvarInteger_var90
	sty sprite_xy_rightvarInteger_var90+1
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
sprite_xy_rightvarInteger_var93 = $56
	sta sprite_xy_rightvarInteger_var93
	sty sprite_xy_rightvarInteger_var93+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda spr_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$50
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var93
sprite_xy_wordAdd91
	sta sprite_xy_rightvarInteger_var93
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var93+1
	tay
	lda sprite_xy_rightvarInteger_var93
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var90
sprite_xy_wordAdd88
	sta sprite_xy_rightvarInteger_var90
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var90+1
	tay
	lda sprite_xy_rightvarInteger_var90
	sta spr_p
	sty spr_p+1
	; LineNumber: 317
	; memcpyfast
	ldy spr_len
	dey
sprite_xy_memcpy94
	lda (source_str),y
	sta (spr_p),y
	dey
	bpl sprite_xy_memcpy94
	; LineNumber: 319
	; Assigning single variable : spr_p
	; Generic 16 bit op
	ldy #0
	lda #$28
sprite_xy_rightvarInteger_var97 = $54
	sta sprite_xy_rightvarInteger_var97
	sty sprite_xy_rightvarInteger_var97+1
	; Generic 16 bit op
	ldy #0
	lda spr_x
sprite_xy_rightvarInteger_var100 = $56
	sta sprite_xy_rightvarInteger_var100
	sty sprite_xy_rightvarInteger_var100+1
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
sprite_xy_rightvarInteger_var103 = $58
	sta sprite_xy_rightvarInteger_var103
	sty sprite_xy_rightvarInteger_var103+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda spr_y
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$50
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var103
sprite_xy_wordAdd101
	sta sprite_xy_rightvarInteger_var103
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var103+1
	tay
	lda sprite_xy_rightvarInteger_var103
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var100
sprite_xy_wordAdd98
	sta sprite_xy_rightvarInteger_var100
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var100+1
	tay
	lda sprite_xy_rightvarInteger_var100
	; Low bit binop:
	clc
	adc sprite_xy_rightvarInteger_var97
sprite_xy_wordAdd95
	sta sprite_xy_rightvarInteger_var97
	; High-bit binop
	tya
	adc sprite_xy_rightvarInteger_var97+1
	tay
	lda sprite_xy_rightvarInteger_var97
	sta spr_p
	sty spr_p+1
	; LineNumber: 319
	; memcpyfast
	ldy spr_len
	dey
sprite_xy_memcpy104
	lda (source_str),y
	sta (spr_p),y
	dey
	bpl sprite_xy_memcpy104
	; LineNumber: 321
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : init_vars
	;    Procedure type : User-defined procedure
	; LineNumber: 328
	; LineNumber: 325
this_row	= $08
	; LineNumber: 325
target_strip	= $16
	; LineNumber: 326
iteration	dc.b	0
	; LineNumber: 327
homeplate	dc.b	$d3
init_vars_block105
init_vars
	; LineNumber: 329
	jsr cls
	; LineNumber: 332
	
; // Init the playfield
	; Assigning single variable : screenmemory
	lda #$00
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 333
	; Assigning single variable : petscii_pointer
	lda #<level2
	ldx #>level2
	sta petscii_pointer
	stx petscii_pointer+1
	; LineNumber: 334
	; Copy full screen
	sta $4c
	lda petscii_pointer+1
	sta $4c+1
	lda screenmemory
	sta $4e
	lda screenmemory+1
	sta $4e+1
	; CopyFullscreen with pointers
	ldx #3
init_vars_outer106
	ldy #0
init_vars_inner107
	lda ($4c),y
	sta ($4e),y
	dey
	bne init_vars_inner107
	inc $4c+1
	inc $4e+1
	dex
	bne init_vars_outer106
	ldy #0
init_vars_final108
	lda ($4c),y
	sta ($4e),y
	iny
	cpy #232
	bne init_vars_final108
	; LineNumber: 335
	; Assigning single variable : this_row
	lda petscii_pointer
	ldx petscii_pointer+1
	sta this_row
	stx this_row+1
	; LineNumber: 336
	; Assigning single variable : target_strip
	lda #<level_strips
	ldx #>level_strips
	sta target_strip
	stx target_strip+1
	; LineNumber: 350
	; Assigning single variable : iteration
	lda #$1
	; Calling storevariable
	sta iteration
init_vars_forloop109
	; LineNumber: 340
	; LineNumber: 342
	
; // Obstacle Blanks
; // Copy the source twice
	; memcpyfast
	ldy #39
init_vars_memcpy119
	lda (this_row),y
	sta (target_strip),y
	dey
	bpl init_vars_memcpy119
	; LineNumber: 343
	; Assigning single variable : target_strip
	lda target_strip
	clc
	adc #$28
	sta target_strip+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd120
	inc target_strip+1
init_vars_WordAdd120
	; LineNumber: 344
	; memcpyfast
	ldy #39
init_vars_memcpy121
	lda (this_row),y
	sta (target_strip),y
	dey
	bpl init_vars_memcpy121
	; LineNumber: 345
	; Assigning single variable : target_strip
	lda target_strip
	clc
	adc #$28
	sta target_strip+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd122
	inc target_strip+1
init_vars_WordAdd122
	; LineNumber: 348
	
; // Next row
	; Assigning single variable : this_row
	lda this_row
	clc
	adc #$28
	sta this_row+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc init_vars_WordAdd123
	inc this_row+1
init_vars_WordAdd123
	; LineNumber: 349
init_vars_forloopcounter111
	; Compare is onpage
	inc iteration
	lda #$19
	cmp iteration ;keep
	bcs init_vars_forloop109
init_vars_loopdone124: ;keep
init_vars_forloopend110
	; LineNumber: 352
	
; // Init the "sprites"
	; memcpy
	ldx #0
init_vars_memcpy125
	lda arr_crockr+ $00,x
	sta str_crockr,x
	inx
	cpx #$9
	bne init_vars_memcpy125
	; LineNumber: 353
	; memcpy
	ldx #0
init_vars_memcpy126
	lda arr_crockl+ $00,x
	sta str_crockl,x
	inx
	cpx #$9
	bne init_vars_memcpy126
	; LineNumber: 354
	; memcpy
	ldx #0
init_vars_memcpy127
	lda arr_logl+ $00,x
	sta str_logl,x
	inx
	cpx #$5
	bne init_vars_memcpy127
	; LineNumber: 355
	; memcpy
	ldx #0
init_vars_memcpy128
	lda arr_logr+ $00,x
	sta str_logr,x
	inx
	cpx #$5
	bne init_vars_memcpy128
	; LineNumber: 356
	; memcpy
	ldx #0
init_vars_memcpy129
	lda arr_truckt_r+ $00,x
	sta str_truckt_r,x
	inx
	cpx #$8
	bne init_vars_memcpy129
	; LineNumber: 357
	; memcpy
	ldx #0
init_vars_memcpy130
	lda arr_truckb_r+ $00,x
	sta str_truckb_r,x
	inx
	cpx #$8
	bne init_vars_memcpy130
	; LineNumber: 358
	; memcpy
	ldx #0
init_vars_memcpy131
	lda arr_carl+ $00,x
	sta str_cart,x
	inx
	cpx #$4
	bne init_vars_memcpy131
	; LineNumber: 359
	; memcpy
	ldx #0
init_vars_memcpy132
	lda arr_carr+ $00,x
	sta str_carb,x
	inx
	cpx #$4
	bne init_vars_memcpy132
	; LineNumber: 363
	
; // Sprite start positions
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$0
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_crockr
	ldx #>str_crockr
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$9
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 364
	; Assigning single variable : spr_x
	lda #$1e
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$1
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_crockl
	ldx #>str_crockl
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$9
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 365
	; Assigning single variable : spr_x
	lda #$4
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$2
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logr
	ldx #>str_logr
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 366
	; Assigning single variable : spr_x
	lda #$18
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$3
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_logl
	ldx #>str_logl
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$5
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 367
	; Assigning single variable : spr_x
	lda #$22
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$4
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_cart
	ldx #>str_cart
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 368
	; Assigning single variable : spr_x
	lda #$22
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$5
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_carb
	ldx #>str_carb
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 369
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$6
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_cart
	ldx #>str_cart
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 370
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$7
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_carb
	ldx #>str_carb
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$4
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 371
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$8
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckt_r
	ldx #>str_truckt_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 372
	; Assigning single variable : spr_x
	lda #$a
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$9
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckb_r
	ldx #>str_truckb_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 373
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$a
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckt_r
	ldx #>str_truckt_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 374
	; Assigning single variable : spr_x
	lda #$13
	; Calling storevariable
	sta spr_x
	; Assigning single variable : spr_y
	; Load Byte array
	ldx #$b
	lda obstacles_y,x
	; Calling storevariable
	sta spr_y
	; Assigning single variable : source_str
	lda #<str_truckb_r
	ldx #>str_truckb_r
	sta source_str
	stx source_str+1
	; Assigning single variable : spr_len
	lda #$8
	; Calling storevariable
	sta spr_len
	jsr sprite_xy
	; LineNumber: 377
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 378
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 380
	; Assigning single variable : KEYPRESS
	lda #$0
	; Calling storevariable
	sta KEYPRESS
	; LineNumber: 381
	; Assigning single variable : ALIVE
	lda #$1
	; Calling storevariable
	sta ALIVE
	; LineNumber: 382
	; Assigning single variable : WON_GAME
	lda #$0
	; Calling storevariable
	sta WON_GAME
	; LineNumber: 384
	; Assigning single variable : player_lives
	lda #$3
	; Calling storevariable
	sta player_lives
	; LineNumber: 385
	; Assigning single variable : player_score
	ldy #0
	lda #$0
	; Calling storevariable
	sta player_score
	sty player_score+1
	; LineNumber: 388
	
; // Home plates
	; Assigning single variable : x
	lda #$3
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 389
	; Assigning single variable : x
	lda #$a
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 390
	; Assigning single variable : x
	lda #$12
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 391
	; Assigning single variable : x
	lda #$18
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 392
	; Assigning single variable : x
	lda #$1f
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 393
	; Assigning single variable : x
	lda #$25
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda #$1
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<homeplate
	ldx #>homeplate
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 394
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : shit_delay
	;    Procedure type : User-defined procedure
	; LineNumber: 399
	; LineNumber: 398
temp_delay	dc.b	0
shit_delay_block133
shit_delay
	; LineNumber: 405
	; Assigning single variable : temp_delay
	lda #$1
	; Calling storevariable
	sta temp_delay
shit_delay_forloop134
	; LineNumber: 401
	; LineNumber: 402
shit_delay_while145
	; Binary clause Simplified: EQUALS
	lda ti
	; Compare with pure num / var optimization
	cmp oldti;keep
	bne shit_delay_elsedoneblock148
shit_delay_ConditionalTrueBlock146: ;Main true block ;keep 
	; LineNumber: 401
	; LineNumber: 402
	jmp shit_delay_while145
shit_delay_elsedoneblock148
	; LineNumber: 403
	; Assigning single variable : oldti
	lda ti
	; Calling storevariable
	sta oldti
	; LineNumber: 404
shit_delay_forloopcounter136
	; Compare is onpage
	inc temp_delay
	lda #$3
	cmp temp_delay ;keep
	bcs shit_delay_forloop134
shit_delay_loopdone151: ;keep
shit_delay_forloopend135
	; LineNumber: 405
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : show_obstacles
	;    Procedure type : User-defined procedure
	; LineNumber: 412
	; LineNumber: 410
strip_num	dc.b	0
	; LineNumber: 410
this_strip	dc.b	0
	; LineNumber: 411
this_source_offset	= $08
show_obstacles_block152
show_obstacles
	; LineNumber: 416
	
; // TRSE way of incrementing 
; // counter with loop back to 0
	inc obstacles_x_rl
	lda obstacles_x_rl
	cmp #$27 ; keep
	bne show_obstacles_incmax154
	lda #$0
	sta obstacles_x_rl
show_obstacles_incmax154
	; LineNumber: 417
	; Assigning single variable : obstacles_x_lr
	; 8 bit binop
	; Add/sub where right value is constant number
	lda #$28
	sec
	sbc obstacles_x_rl
	 ; end add / sub var with constant
	; Calling storevariable
	sta obstacles_x_lr
	; LineNumber: 437
	; Assigning single variable : strip_num
	lda #$0
	; Calling storevariable
	sta strip_num
show_obstacles_forloop155
	; LineNumber: 420
	; LineNumber: 421
	; Assigning single variable : this_strip
	; Load Byte array
	ldx strip_num
	lda obstacles_y,x
	; Calling storevariable
	sta this_strip
	; LineNumber: 422
	; Assigning single variable : screenmemory
	; Generic 16 bit op
	; Integer constant assigning
	ldy #$80
	lda #$00
show_obstacles_rightvarInteger_var181 = $54
	sta show_obstacles_rightvarInteger_var181
	sty show_obstacles_rightvarInteger_var181+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda this_strip
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$28
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc show_obstacles_rightvarInteger_var181
show_obstacles_wordAdd179
	sta show_obstacles_rightvarInteger_var181
	; High-bit binop
	tya
	adc show_obstacles_rightvarInteger_var181+1
	tay
	lda show_obstacles_rightvarInteger_var181
	sta screenmemory
	sty screenmemory+1
	; LineNumber: 424
	; Assigning single variable : this_source_offset
	; Generic 16 bit op
	lda #<level_strips
	ldy #>level_strips
show_obstacles_rightvarInteger_var184 = $54
	sta show_obstacles_rightvarInteger_var184
	sty show_obstacles_rightvarInteger_var184+1
	; Right is PURE NUMERIC : Is word =1
	; 16 bit mul or div
	; Mul 16x8 setup
	ldy #0
	lda this_strip
	sta mul16x8_num1
	sty mul16x8_num1Hi
	lda #$50
	sta mul16x8_num2
	jsr mul16x8_procedure
	; Low bit binop:
	clc
	adc show_obstacles_rightvarInteger_var184
show_obstacles_wordAdd182
	sta show_obstacles_rightvarInteger_var184
	; High-bit binop
	tya
	adc show_obstacles_rightvarInteger_var184+1
	tay
	lda show_obstacles_rightvarInteger_var184
	sta this_source_offset
	sty this_source_offset+1
	; LineNumber: 426
	; Binary clause Simplified: EQUALS
	; Load Byte array
	ldx strip_num
	lda strip_direction,x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne show_obstacles_elseblock187
show_obstacles_ConditionalTrueBlock186: ;Main true block ;keep 
	; LineNumber: 427
	; LineNumber: 428
	; Assigning single variable : this_source_offset
	lda this_source_offset
	clc
	adc obstacles_x_rl
	sta this_source_offset+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc show_obstacles_WordAdd194
	inc this_source_offset+1
show_obstacles_WordAdd194
	; LineNumber: 430
	jmp show_obstacles_elsedoneblock188
show_obstacles_elseblock187
	; LineNumber: 431
	; LineNumber: 432
	; Assigning single variable : this_source_offset
	lda this_source_offset
	clc
	adc obstacles_x_lr
	sta this_source_offset+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc show_obstacles_WordAdd196
	inc this_source_offset+1
show_obstacles_WordAdd196
	; LineNumber: 433
show_obstacles_elsedoneblock188
	; LineNumber: 434
	; memcpyfast
	ldy #39
show_obstacles_memcpy197
	lda (this_source_offset),y
	sta (screenmemory),y
	dey
	bpl show_obstacles_memcpy197
	; LineNumber: 436
show_obstacles_forloopcounter157
	inc strip_num
	lda #$c
	cmp strip_num ;keep
	beq show_obstacles_loopdone198
show_obstacles_loopnotdone199
	jmp show_obstacles_forloop155
show_obstacles_loopdone198
show_obstacles_forloopend156
	; LineNumber: 439
	
; // RESET SCREEN MEMORY
	; Assigning single variable : screenmemory
	lda #$00
	ldx #$80
	sta screenmemory
	stx screenmemory+1
	; LineNumber: 441
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : kill_frog
	;    Procedure type : User-defined procedure
	; LineNumber: 444
kill_frog
	; LineNumber: 446
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 447
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 448
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 449
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 450
	dec player_lives
	; LineNumber: 451
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : check_collisions
	;    Procedure type : User-defined procedure
	; LineNumber: 456
	; LineNumber: 455
next_tile	dc.b	0
check_collisions_block202
check_collisions
	; LineNumber: 458
	
; // CHECK COLLISSIONS
	; Assigning single variable : next_tile
	; Assigning single variable : sx
	lda frog_x
	; Calling storevariable
	sta sx
	; Assigning single variable : sy
	lda frog_y
	; Calling storevariable
	sta sy
	jsr getat
	; Calling storevariable
	sta next_tile
	; LineNumber: 464
	cmp #$66 ;keep
	bne check_collisions_casenext204
	; LineNumber: 467
	; LineNumber: 468
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs check_collisions_elsedoneblock209
check_collisions_ConditionalTrueBlock207: ;Main true block ;keep 
	; LineNumber: 469
	; LineNumber: 470
	
; // There is no function to search a string
; // or check an array, or return array size,
; // so we need to check each character individually
; // Scenery
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 471
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 472
check_collisions_elsedoneblock209
	; LineNumber: 473
	jmp check_collisions_caseend203
check_collisions_casenext204
	lda next_tile
	cmp #$68 ;keep
	bne check_collisions_casenext212
	; LineNumber: 476
	; LineNumber: 477
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 478
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 479
	jmp check_collisions_caseend203
check_collisions_casenext212
	lda next_tile
	cmp #$5c ;keep
	bne check_collisions_casenext214
	; LineNumber: 482
	; LineNumber: 483
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 484
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 485
	jmp check_collisions_caseend203
check_collisions_casenext214
	lda next_tile
	cmp #$f0 ;keep
	bne check_collisions_casenext216
	; LineNumber: 489
	; LineNumber: 490
	
; // Truck!
	jsr kill_frog
	; LineNumber: 491
	jmp check_collisions_caseend203
check_collisions_casenext216
	lda next_tile
	cmp #$ed ;keep
	bne check_collisions_casenext218
	; LineNumber: 494
	; LineNumber: 495
	jsr kill_frog
	; LineNumber: 497
	jmp check_collisions_caseend203
check_collisions_casenext218
	lda next_tile
	cmp #$ee ;keep
	bne check_collisions_casenext220
	; LineNumber: 499
	; LineNumber: 500
	jsr kill_frog
	; LineNumber: 502
	jmp check_collisions_caseend203
check_collisions_casenext220
	lda next_tile
	cmp #$fd ;keep
	bne check_collisions_casenext222
	; LineNumber: 505
	; LineNumber: 506
	jsr kill_frog
	; LineNumber: 508
	jmp check_collisions_caseend203
check_collisions_casenext222
	lda next_tile
	cmp #$c6 ;keep
	bne check_collisions_casenext224
	; LineNumber: 512
	; LineNumber: 513
	
; // Crock!
	jsr kill_frog
	; LineNumber: 515
	jmp check_collisions_caseend203
check_collisions_casenext224
	lda next_tile
	cmp #$a2 ;keep
	bne check_collisions_casenext226
	; LineNumber: 518
	; LineNumber: 519
	jsr kill_frog
	; LineNumber: 520
	jmp check_collisions_caseend203
check_collisions_casenext226
	lda next_tile
	cmp #$d6 ;keep
	bne check_collisions_casenext228
	; LineNumber: 525
	; LineNumber: 526
	
; // HOME
; // Occupied
	; Assigning single variable : frog_x
	lda frog_old_x
	; Calling storevariable
	sta frog_x
	; LineNumber: 527
	; Assigning single variable : frog_y
	lda frog_old_y
	; Calling storevariable
	sta frog_y
	; LineNumber: 528
	jmp check_collisions_caseend203
check_collisions_casenext228
	lda next_tile
	cmp #$d3 ;keep
	bne check_collisions_casenext230
	; LineNumber: 531
	; LineNumber: 532
	; Binary clause Simplified: NOTEQUALS
	lda frog_x
	; Compare with pure num / var optimization
	cmp frog_old_x;keep
	beq check_collisions_localfailed238
	jmp check_collisions_ConditionalTrueBlock233
check_collisions_localfailed238: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp frog_old_y;keep
	beq check_collisions_elsedoneblock235
check_collisions_ConditionalTrueBlock233: ;Main true block ;keep 
	; LineNumber: 533
	; LineNumber: 534
	
; // Success
	; Assigning single variable : player_score
	ldy #0
	lda player_score
	clc
	adc #$64
	sta player_score+0
	; Optimization : A := A op 8 bit - var and bvar are the same - perform inc
	bcc check_collisions_WordAdd240
	inc player_score+1
check_collisions_WordAdd240
	; LineNumber: 535
	; Assigning single variable : frog_x
	lda #$14
	; Calling storevariable
	sta frog_x
	; LineNumber: 536
	; Assigning single variable : frog_y
	lda #$18
	; Calling storevariable
	sta frog_y
	; LineNumber: 537
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 538
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 539
check_collisions_elsedoneblock235
	; LineNumber: 540
	jmp check_collisions_caseend203
check_collisions_casenext230
	; LineNumber: 544
	; LineNumber: 546
	; Binary clause Simplified: NOTEQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$ff;keep
	beq check_collisions_elsedoneblock245
check_collisions_ConditionalTrueBlock243: ;Main true block ;keep 
	; LineNumber: 547
	; LineNumber: 548
	
; // None of the cases were valid so go ahead
	inc player_score
	bne check_collisions_incdec249
	inc player_score +1
check_collisions_incdec249
	; LineNumber: 549
check_collisions_elsedoneblock245
	; LineNumber: 550
check_collisions_caseend203
	; LineNumber: 551
	rts
	; NodeProcedureDecl -1
	; ***********  Defining procedure : game_loop
	;    Procedure type : User-defined procedure
	; LineNumber: 557
game_loop
	; LineNumber: 560
game_loop_while251
	; Binary clause Simplified: EQUALS
	lda ALIVE
	; Compare with pure num / var optimization
	cmp #$1;keep
	bne game_loop_localfailed366
game_loop_localsuccess367: ;keep
	; ; logical AND, second requirement
	; Binary clause Simplified: EQUALS
	lda WON_GAME
	; Compare with pure num / var optimization
	cmp #$0;keep
	bne game_loop_localfailed366
	jmp game_loop_ConditionalTrueBlock252
game_loop_localfailed366
	jmp game_loop_elsedoneblock254
game_loop_ConditionalTrueBlock252: ;Main true block ;keep 
	; LineNumber: 561
	; LineNumber: 562
	; Assigning single variable : frog_old_x
	lda frog_x
	; Calling storevariable
	sta frog_old_x
	; LineNumber: 563
	; Assigning single variable : frog_old_y
	lda frog_y
	; Calling storevariable
	sta frog_old_y
	; LineNumber: 564
	; Assigning single variable : KEYPRESS
	jsr getkey
	; Calling storevariable
	sta KEYPRESS
	; LineNumber: 569
	; Binary clause Simplified: EQUALS
	; Compare with pure num / var optimization
	cmp #$b8;keep
	bne game_loop_elsedoneblock372
game_loop_ConditionalTrueBlock370: ;Main true block ;keep 
	; LineNumber: 570
	; LineNumber: 571
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$2;keep
	bcc game_loop_elsedoneblock386
game_loop_ConditionalTrueBlock384: ;Main true block ;keep 
	; LineNumber: 572
	; LineNumber: 573
	
; // Uncomment to show key that was pressed
; // textat(30,20, #KEYPRESS,1);
	dec frog_y
	; LineNumber: 574
game_loop_elsedoneblock386
	; LineNumber: 575
game_loop_elsedoneblock372
	; LineNumber: 577
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b6;keep
	bne game_loop_elsedoneblock394
game_loop_ConditionalTrueBlock392: ;Main true block ;keep 
	; LineNumber: 578
	; LineNumber: 579
	; Binary clause Simplified: LESS
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$27;keep
	bcs game_loop_elsedoneblock408
game_loop_ConditionalTrueBlock406: ;Main true block ;keep 
	; LineNumber: 580
	; LineNumber: 581
	inc frog_x
	; LineNumber: 582
game_loop_elsedoneblock408
	; LineNumber: 583
game_loop_elsedoneblock394
	; LineNumber: 585
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b2;keep
	bne game_loop_localfailed426
	jmp game_loop_ConditionalTrueBlock414
game_loop_localfailed426: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b5;keep
	bne game_loop_elsedoneblock416
game_loop_ConditionalTrueBlock414: ;Main true block ;keep 
	; LineNumber: 586
	; LineNumber: 587
	; Binary clause Simplified: LESS
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$18;keep
	bcs game_loop_elsedoneblock431
game_loop_ConditionalTrueBlock429: ;Main true block ;keep 
	; LineNumber: 588
	; LineNumber: 589
	inc frog_y
	; LineNumber: 590
game_loop_elsedoneblock431
	; LineNumber: 591
game_loop_elsedoneblock416
	; LineNumber: 593
	; Binary clause Simplified: EQUALS
	lda KEYPRESS
	; Compare with pure num / var optimization
	cmp #$b4;keep
	bne game_loop_elsedoneblock439
game_loop_ConditionalTrueBlock437: ;Main true block ;keep 
	; LineNumber: 594
	; LineNumber: 595
	; Binary clause Simplified: GREATEREQUAL
	lda frog_x
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcc game_loop_elsedoneblock453
game_loop_ConditionalTrueBlock451: ;Main true block ;keep 
	; LineNumber: 596
	; LineNumber: 597
	dec frog_x
	; LineNumber: 598
game_loop_elsedoneblock453
	; LineNumber: 599
game_loop_elsedoneblock439
	; LineNumber: 602
	
; // Show the obstacles in new positions
	jsr show_obstacles
	; LineNumber: 605
	
; // "Collision detection"
	jsr check_collisions
	; LineNumber: 608
	; Binary clause Simplified: LESS
	lda player_lives
	; Compare with pure num / var optimization
	cmp #$1;keep
	bcs game_loop_elsedoneblock461
game_loop_ConditionalTrueBlock459: ;Main true block ;keep 
	; LineNumber: 609
	; LineNumber: 611
	
; // Still alive?
; // Dead and didn't win :(
	; Assigning single variable : ALIVE
	lda #$0
	; Calling storevariable
	sta ALIVE
	; LineNumber: 613
game_loop_elsedoneblock461
	; LineNumber: 618
	; Binary clause Simplified: NOTEQUALS
	lda frog_x
	; Compare with pure num / var optimization
	cmp frog_old_x;keep
	beq game_loop_localfailed469
	jmp game_loop_ConditionalTrueBlock465
game_loop_localfailed469: ;keep
	; ; logical OR, second chance
	; Binary clause Simplified: NOTEQUALS
	lda frog_y
	; Compare with pure num / var optimization
	cmp frog_old_y;keep
	beq game_loop_elsedoneblock467
game_loop_ConditionalTrueBlock465: ;Main true block ;keep 
	; LineNumber: 619
	; LineNumber: 620
	
; // only undraw if different
	; Assigning single variable : x
	lda frog_old_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_old_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<previous_tile
	ldx #>previous_tile
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 621
	; Assigning single variable : previous_tile
	; Assigning single variable : sx
	lda frog_x
	; Calling storevariable
	sta sx
	; Assigning single variable : sy
	lda frog_y
	; Calling storevariable
	sta sy
	jsr getat
	; Calling storevariable
	sta previous_tile
	; LineNumber: 622
game_loop_elsedoneblock467
	; LineNumber: 625
	; Binary clause Simplified: GREATEREQUAL
	lda frog_y
	; Compare with pure num / var optimization
	cmp #$b;keep
	bcc game_loop_elseblock473
game_loop_ConditionalTrueBlock472: ;Main true block ;keep 
	; LineNumber: 626
	; LineNumber: 627
	
; // draw the frog because things might have changed onscreen
	; Assigning single variable : x
	lda frog_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<frogcharA
	ldx #>frogcharA
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 629
	jmp game_loop_elsedoneblock474
game_loop_elseblock473
	; LineNumber: 630
	; LineNumber: 631
	; Assigning single variable : x
	lda frog_x
	; Calling storevariable
	sta x
	; Assigning single variable : y
	lda frog_y
	; Calling storevariable
	sta y
	; Assigning single variable : this_str
	lda #<frogcharB
	ldx #>frogcharB
	sta this_str
	stx this_str+1
	; Assigning single variable : str_len
	lda #$1
	; Calling storevariable
	sta str_len
	jsr textat
	; LineNumber: 632
game_loop_elsedoneblock474
	; LineNumber: 637
	
; // Score and lives
	; Assigning single variable : num_x
	lda #$9
	; Calling storevariable
	sta num_x
	; Assigning single variable : num_y
	lda #$0
	; Calling storevariable
	sta num_y
	; Assigning single variable : num
	; integer assignment NodeVar
	ldy player_score+1 ; Next one
	lda player_score
	; Calling storevariable
	sta num
	sty num+1
	; Assigning single variable : num_len
	lda #$3
	; Calling storevariable
	sta num_len
	jsr numberat
	; LineNumber: 638
	; Assigning single variable : num_x
	lda #$24
	; Calling storevariable
	sta num_x
	; Assigning single variable : num_y
	lda #$0
	; Calling storevariable
	sta num_y
	; Assigning single variable : num
	ldy #0
	lda player_lives
	; Calling storevariable
	sta num
	sty num+1
	; Assigning single variable : num_len
	lda #$1
	; Calling storevariable
	sta num_len
	jsr numberat
	; LineNumber: 641
	
; // Crappy delay
	jsr shit_delay
	; LineNumber: 642
	jmp game_loop_while251
game_loop_elsedoneblock254
	; LineNumber: 644
	rts
block1
	; LineNumber: 646
	; LineNumber: 649
MainProgram_while479
	; Binary clause Simplified: NOTEQUALS
	lda #$1
	; Compare with pure num / var optimization
	cmp #$0;keep
	beq MainProgram_elsedoneblock482
MainProgram_ConditionalTrueBlock480: ;Main true block ;keep 
	; LineNumber: 650
	; LineNumber: 651
	jsr title_screen
	; LineNumber: 652
	jsr init_vars
	; LineNumber: 653
	jsr game_loop
	; LineNumber: 654
	jsr score_screen
	; LineNumber: 655
	jmp MainProgram_while479
MainProgram_elsedoneblock482
	; LineNumber: 659
	; End of program
	; Ending memory block
EndBlock410
