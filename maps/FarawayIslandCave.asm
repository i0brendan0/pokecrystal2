const_value set 2
	const LEGENDARY_MEW
	
FarawayIslandCave_MapScriptHeader::

.Triggers: db 0

.Callbacks: db 1
	dbw MAPCALLBACK_OBJECTS, .Mew
	
.Mew:
	checkevent EVENT_FOUGHT_MEW
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
.NoAppear
	disappear LEGENDARY_MEW
	return

.Appear:
	appear LEGENDARY_MEW
	return

Mew:
	opentext
	writetext MewText
	cry Mew
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEW
	loadwildmon MEW, 50
	startbattle
	disappear LEGENDARY_MEW
	reloadmapafterbattle
	end

MewText:
	text "Oowaah!"
	done

FarawayIslandCave_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 13, 9, 1, FARAWAY_ISLAND_OUTSIDE

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_CHARMANDER, 7, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_PINK, PERSONTYPE_SCRIPT, 0, Mew, EVENT_LEGENDARY_MEW

