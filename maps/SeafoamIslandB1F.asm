const_value set 2
	const LEGENDARYBIRD_ARTICUNO

SeafoamIslandB1F_MapScriptHeader::

.Triggers: db 0

.Callbacks:
	db 1

	dbw MAPCALLBACK_OBJECTS, .Articuno
	
.Articuno:
	checkevent EVENT_FOUGHT_ARTICUNO
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
.NoAppear
	disappear LEGENDARYBIRD_ARTICUNO
	return

.Appear:
	appear LEGENDARYBIRD_ARTICUNO
	return

Articuno:
	opentext
	writetext ArticunoText
	cry Articuno
	pause 15
	closetext
	setevent EVENT_FOUGHT_ARTICUNO
	loadwildmon ARTICUNO, 50
	startbattle
	disappear LEGENDARYBIRD_ARTICUNO
	reloadmapafterbattle
	end

ArticunoText:
	text "Gyaoo!"
	done

SeafoamIslandB1F_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 31, 33, 4, SEAFOAM_GYM
	warp_def 5, 21, 2, ROUTE_20

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_MOLTRES, 6, 20, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, Articuno, EVENT_LEGENDARY_BIRD_ARTICUNO

