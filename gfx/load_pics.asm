GetUnownLetter: ; 51040 - prism changes unown
; Return Unown letter in UnownLetter based on DVs at hl

	ld a, [hl]
	inc a
	ld [UnownLetter], a
	ret

GetFrontpic:
	ld a, [CurPartySpecies] ;naming convention
	ld [CurSpecies], a ;naming convention
	call IsAPokemon
	ret c
	ld a, [rSVBK]
	push af
	call _GetFrontpic
	pop af
	ld [rSVBK], a
	ret

FrontpicPredef: ; 5108b
	ld a, [CurPartySpecies]
	ld [CurSpecies], a
	call IsAPokemon
	ret c
	ld a, [rSVBK]
	push af
	xor a
	ld [hBGMapMode], a
	call _GetFrontpic
	call Function51103
	pop af
	ld [rSVBK], a
	ret

_GetFrontpic:
	push de
	call GetBaseData
	ld a, [BasePicSize] ;naming
	and $f
	ld b, a

	push bc
	call GetFrontpicPointer
	ld a, $6
	ld [rSVBK], a
	ld a, b
	ld de, wDecompressScratch + $800
	call FarDecompress
	pop bc
	ld hl, wDecompressScratch
	ld de, wDecompressScratch + $800
	call Function512ab
	pop hl
	push hl
	ld de, wDecompressScratch ;same thing i think
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ret

GetFrontpicPointer: ; 510d7 - prism changes unown
GLOBAL PicPointers, UnownPicPointers

	ld a, [CurPartySpecies]
	cp UNOWN
	jr z, .unown
	ld a, [CurPartySpecies]
	ld d, BANK(PicPointers)
	jr .ok

.unown
	ld a, [UnownLetter]
	ld d, BANK(UnownPicPointers)

.ok
	ld hl, PicPointers ; UnownPicPointers
	dec a
	ld bc, 6
	call AddNTimes
	ld a, d
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, d
	call GetFarHalfword
	pop bc
	ret

Function51103: ; 51103
	ld a, $1
	ld [rVBK], a
	push hl
	ld de, wDecompressScratch ;same thing i think
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ld de, 7 * 7 tiles
	add hl, de
	push hl
	ld a, $1
	ld hl, BasePicSize
	call GetFarWRAMByte 
	pop hl
	and $f
	ld de, w6_d800 + 5 * 5 tiles ;same
	ld c, 5 * 5
	cp 5
	jr z, .got_dims
	ld de, w6_d800 + 6 * 6 tiles ;same
	ld c, 6 * 6
	cp 6
	jr z, .got_dims
	ld de, w6_d800 + 7 * 7 tiles ;same
	ld c, 7 * 7
.got_dims

	push hl
	push bc
	call Function5114f
	pop bc
	pop hl
	ld de, wDecompressScratch
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	xor a
	ld [rVBK], a
	ret

Function5114f: ; 5114f
	ld hl, wDecompressScratch
	swap c
	ld a, c
	and $f
	ld b, a
	ld a, c
	and $f0
	ld c, a
	push bc
	call LoadOrientedFrontpic
	pop bc
.loop
	push bc
	ld c, $0
	call LoadOrientedFrontpic
	pop bc
.handleLoop
	dec b
	jr nz, .loop
	ret

GetBackpic: ; 5116c
	ld a, [CurPartySpecies]
	call IsAPokemon
	ret c

	ld a, [CurPartySpecies]
	ld b, a
	ld a, [UnownLetter]
	ld c, a
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a
	push de

	; These are assumed to be at the same
	; address in their respective banks.
	GLOBAL PicPointers,  UnownPicPointers
	ld hl, PicPointers ; UnownPicPointers
	ld a, b
	ld d, BANK(PicPointers)
	cp UNOWN
	jr nz, .ok
	ld a, c
	ld d, BANK(UnownPicPointers)
.ok
	dec a
	ld bc, 6
	call AddNTimes
	ld bc, 3
	add hl, bc
	ld a, d
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, d
	call GetFarHalfword
	ld de, wDecompressScratch
	pop af
	call FarDecompress
	ld hl, wDecompressScratch
	ld c, 6 * 6
	call FixBackpicAlignment
	pop hl
	ld de, wDecompressScratch
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ld [rSVBK], a
	ret

FixPicBank: ; 511c5
; This is a thing for some reason.

PICS_FIX EQU $36
GLOBAL PICS_FIX

	push hl
	push bc
	sub BANK(Pics_1) - PICS_FIX
	ld c, a
	ld b, 0
	ld hl, .PicsBanks
	add hl, bc
	ld a, [hl]
	pop bc
	pop hl
	ret

.PicsBanks: ; 511d4
	db BANK(Pics_1) + 0
	db BANK(Pics_1) + 1
	db BANK(Pics_1) + 2
	db BANK(Pics_1) + 3
	db BANK(Pics_1) + 4
	db BANK(Pics_1) + 5
	db BANK(Pics_1) + 6
	db BANK(Pics_1) + 7
	db BANK(Pics_1) + 8
	db BANK(Pics_1) + 9
	db BANK(Pics_1) + 10
	db BANK(Pics_1) + 11
	db BANK(Pics_1) + 12
	db BANK(Pics_1) + 13
	db BANK(Pics_1) + 14
	db BANK(Pics_1) + 15
	db BANK(Pics_1) + 16
	db BANK(Pics_1) + 17
	db BANK(Pics_1) + 18
	db BANK(Pics_1) + 19
	db BANK(Pics_1) + 20
	db BANK(Pics_1) + 21
	db BANK(Pics_1) + 22
	db BANK(Pics_1) + 23

Function511ec: ; 511ec
	ld a, c
	push de
	ld hl, PicPointers
	dec a
	ld bc, 6
	call AddNTimes
	ld a, BANK(PicPointers)
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, BANK(PicPointers)
	call GetFarHalfword
	pop af
	pop de
	call FarDecompress
	ret

GetTrainerPic:
	ld a, [TrainerClass]
	and a
	ret z
	cp NUM_TRAINER_CLASSES
	ret nc
	call WaitBGMap
	xor a
	ld [hBGMapMode], a
	ld hl, TrainerPicPointers
	ld a, [TrainerClass]
	dec a
	ld bc, 3
	call AddNTimes
	ld a, [rSVBK]
	push af
	ld a, $6
	ld [rSVBK], a
	push de
	ld a, BANK(TrainerPicPointers)
	call GetFarByte
	call FixPicBank
	push af
	inc hl
	ld a, BANK(TrainerPicPointers)
	call GetFarHalfword
	pop af
	ld de, wDecompressScratch
	call FarDecompress
	pop hl
	ld de, wDecompressScratch
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ld [rSVBK], a
	call WaitBGMap
	ld a, $1
	ld [hBGMapMode], a
	ret

DecompressPredef: ; 5125d
; Decompress lz data from b:hl to scratch space at 6:d000, then copy it to address de.

	ld a, [rSVBK]
	push af
	ld a, 6
	ld [rSVBK], a

	push de
	push bc
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	pop bc
	ld de, wDecompressScratch
	pop hl
	ld a, [hROMBank]
	ld b, a
	call Get2bpp

	pop af
	ld [rSVBK], a
	ret

FixBackpicAlignment: ; 5127c - compare screws this up
	push de
	push bc
	ld a, [wBoxAlignment]
	and a
	jr z, .keep_dims
	ld a, c
	cp 7 * 7
	ld de, 7 * 7 tiles
	jr z, .got_dims
	cp 6 * 6
	ld de, 6 * 6 tiles
	jr z, .got_dims
	ld de, 5 * 5 tiles

.got_dims
	ld a, [hl]
	lb bc, 0, 8
.loop
	rra
	rl b
	dec c
	jr nz, .loop
	ld a, b
	ld [hli], a
	dec de
	ld a, e
	or d
	jr nz, .got_dims

.keep_dims
	pop bc
	pop de
	ret

Function512ab: ; 512ab - name change
	ld a, b
	sub 5
	jr z, .five
	dec a
	jr z, .six

.seven_loop
	ld c, $70
	call LoadOrientedFrontpic
	dec b
	jr nz, .seven_loop
	ret

.six
	ld c, $70
	xor a
	call .Fill
.six_loop
	ld c, $10
	xor a
	call .Fill
	ld c, $60
	call LoadOrientedFrontpic
	dec b
	jr nz, .six_loop
	ret

.five
	ld c, $70
	xor a
	call .Fill
.five_loop
	ld c, $20
	xor a
	call .Fill
	ld c, $50
	call LoadOrientedFrontpic
	dec b
	jr nz, .five_loop
	ld c, $70
	xor a
.Fill
	ld [hli], a
	dec c
	jr nz, .Fill
	ret

LoadOrientedFrontpic:
; load fronpic from de to hl
; x flipped if [wBoxAlignment] is nonzero
	ld a, [wBoxAlignment]
	and a
	jr nz, .x_flip
.left_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .left_loop
	ret

.x_flip
	push bc
.right_loop
	ld a, [de]
	inc de
	ld b, a
	xor a
	rept 8
	rr b
	rla
	endr
	ld [hli], a
	dec c
	jr nz, .right_loop
	pop bc
	ret
