const_value set 2
	const LEGENDARYBIRD_ZAPDOS

Route10North_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	dbw MAPCALLBACK_OBJECTS, .Zapdos

.Zapdos:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	checkevent EVENT_BEAT_RED
	iftrue .Appear
	jump .NoAppear

.Appear:
	appear LEGENDARYBIRD_ZAPDOS
	return

.NoAppear:
	disappear LEGENDARYBIRD_ZAPDOS
	return

Zapdos:
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	loadwildmon ZAPDOS, 50
	startbattle
	disappear LEGENDARYBIRD_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokeCenterSign:
	jumpstd pokecentersign

PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10North_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $1, $b, 1, ROUTE_10_POKECENTER_1F
	warp_def $9, $3, 1, POWER_PLANT

.XYTriggers:
	db 0

.Signposts:
	db 2
	signpost 11, 5, SIGNPOST_READ, PowerPlantSign
	signpost 1, 12, SIGNPOST_READ, Route10PokeCenterSign

.PersonEvents:
	db 1
	person_event SPRITE_MOLTRES, 10, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, Zapdos, EVENT_LEGENDARY_BIRD_ZAPDOS
