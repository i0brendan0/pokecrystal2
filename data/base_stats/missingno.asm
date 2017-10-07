	db MISSINGNO ; 252

	db  106, 155, 17, 44, 44, 114
	;   hp   atk def spd sat  sdf

	db CURSE_T, CURSE_T
	db 45 ; catch rate
	db 100 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 255 ; gender
	db 100 ; unknown
	db 120 ; step cycles to hatch
	db 5 ; unknown
	INCBIN "gfx/pics/missingno/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db SLOW ; growth rate
	dn NO_EGGS, NO_EGGS ; egg groups

	; tmhm
	tmhm
	; end
