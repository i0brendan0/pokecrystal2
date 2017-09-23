const_value set 2
	const LEGENDARYBIRD_MOLTRES

SilverCaveOutside_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 2

	; callbacks
	dbw MAPCALLBACK_NEWMAP, .FlyPoint
	dbw MAPCALLBACK_OBJECTS, .Moltres
	
.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	return

.Moltres:
	checkevent EVENT_FOUGHT_MOLTRES
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
	jump .NoAppear

.Appear:
	appear LEGENDARYBIRD_MOLTRES
	return

.NoAppear:
	disappear LEGENDARYBIRD_MOLTRES
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

MtSilverPokeCenterSign:
	jumpstd pokecentersign

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	dwb EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE, FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $13, $17, 1, SILVER_CAVE_POKECENTER_1F
	warp_def $b, $12, 1, SILVER_CAVE_ROOM_1

.XYTriggers:
	db 0

.Signposts:
	db 3
	signpost 19, 24, SIGNPOST_READ, MtSilverPokeCenterSign
	signpost 13, 17, SIGNPOST_READ, MtSilverSign
	signpost 25, 9, SIGNPOST_ITEM, SilverCaveOutsideHiddenFullRestore

.PersonEvents:
	db 1
	person_event SPRITE_MOLTRES, 25, 9, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, Moltres, EVENT_LEGENDARY_BIRD_MOLTRES
