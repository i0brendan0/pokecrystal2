const_value set 2
	const LEGENDARYBIRD_MOLTRES

SilverCaveMoltresRoom_MapScriptHeader::

.Triggers: db 0

.Callbacks: db 1

	dbw MAPCALLBACK_OBJECTS, .Moltres

.Moltres:
	checkevent EVENT_FOUGHT_MOLTRES
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
.NoAppear
	disappear LEGENDARYBIRD_MOLTRES
	return

.Appear:
	appear LEGENDARYBIRD_MOLTRES
	return

Moltres:
	opentext
	writetext MoltresText
	cry Moltres
	pause 15
	closetext
	setevent EVENT_FOUGHT_MOLTRES
	loadwildmon MOLTRES, 50
	startbattle
	disappear LEGENDARYBIRD_MOLTRES
	reloadmapafterbattle
	end

MoltresText:
	text "Gyaoo!"
	done

SilverCaveMoltresRoom_MapEventHeader:: db 0, 0

.Warps: db 1
	warp_def 27, 7, 5, SILVER_CAVE_ROOM_2

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 1
	person_event SPRITE_MOLTRES, 3, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Moltres, EVENT_LEGENDARY_BIRD_MOLTRES

