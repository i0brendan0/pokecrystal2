	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33
.frame2
	db $01 ; bitmask
	db $34, $18, $35
.frame3
	db $02 ; bitmask
	db $31, $34, $32, $18, $33, $35
.frame4
	db $03 ; bitmask
	db $36, $37, $38, $39, $3a, $3b, $3c, $18, $18, $3d, $3e, $3f
