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
	jp CloseSRAM

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
	ld a, BANK(VTiles3)
	ld [rVBK], a
	call GetAnimatedFrontpic
	xor a
	ld [rVBK], a
	pop af
	ld [rSVBK], a
	jp CloseSRAM

_GetFrontpic:
	ld a, BANK(sScratch)
	call GetSRAMBank
	push de
	call GetBaseData
	ld a, [BasePicSize] ;naming
	and $f
	ld b, a
	push bc
	call GetFrontpicPointer
	ld a, BANK(wDecompressScratch)

	ld [rSVBK], a
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	
	; Save decompressed size
	swap e
	swap d
	ld a, d
	and $f0
	or e
	ld [sScratch], a

	pop bc
	ld hl, sScratch + $10
	ld de, wDecompressScratch
	call PadFrontpic
	pop hl
	push hl
	ld de, sScratch + $10
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
	push af
	inc hl
	ld a, d
	call GetFarHalfword
	pop bc
	ret

GetAnimatedFrontpic: ; 51103
	push hl
	ld de, sScratch + $10
	ld c, 7 * 7
	ld a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ld de, 7 * 7 tiles
	add hl, de
	push hl
	ld a, BANK(BasePicSize)
	ld hl, BasePicSize
	call GetFarWRAMByte 
	pop hl
	and $f
	ld de, wDecompressScratch + 5 * 5 tiles
	ld c, 5 * 5
	cp 5
	jr z, .got_dims
	ld de, wDecompressScratch + 6 * 6 tiles
	ld c, 6 * 6
	cp 6
	jr z, .got_dims
	ld de, wDecompressScratch + 7 * 7 tiles
	ld c, 7 * 7
.got_dims

	; Get animation size (total - base sprite size)
	ld a, [sScratch]
	sub c
	ret z ; Return if there's no animation
	ld c, a

	push hl
	push bc
	call LoadOrientedFrontpicTiles
	pop bc
	pop hl
	ld de, wDecompressScratch
	ld a, [hROMBank]
	ld b, a	
	; If we can load it in a single pass, just do it
	ld a, c
	sub (128 - 7 * 7)
	jr c, .copy_and_finish

	; Otherwise, we load the first part...
	inc a
	ld [sScratch], a
	ld c, (127 - 7 * 7)
	call Get2bpp	; Then move up a bit and load the rest
	ld de, wDecompressScratch + (127 - 7 * 7) tiles
	ld hl, VTiles4
	ld a, [hROMBank]
	ld b, a
	ld a, [sScratch]
	ld c, a

.copy_and_finish
	jp Get2bpp

LoadOrientedFrontpicTiles: ; 5114f
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
    ld a, c
    and a
    jr z, .handleLoop
    inc b
    jr .handleLoop
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

PadFrontpic:
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
