const_value set 2
	const SILVERCAVEROOM2_POKE_BALL1
	const SILVERCAVEROOM2_POKE_BALL2
	const SILVERCAVEROOM2_POKE_BALL3

SilverCaveRoom2_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SilverCaveRoom2Calcium:
	itemball CALCIUM

SilverCaveRoom2UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom2PPUp:
	itemball PP_UP

SilverCaveRoom2HiddenMaxPotion:
	dwb EVENT_SILVER_CAVE_ROOM_2_HIDDEN_MAX_POTION, MAX_POTION


SilverCaveRoom2_MapEventHeader:: db 0, 0

.Warps: db 5
	warp_def 31, 17, 2, SILVER_CAVE_ROOM_1
	warp_def 5, 11, 1, SILVER_CAVE_ROOM_3
	warp_def 21, 13, 1, SILVER_CAVE_ITEM_ROOMS
	warp_def 3, 23, 2, SILVER_CAVE_ITEM_ROOMS
	warp_def 19, 5, 1, SILVER_CAVE_MOLTRES_ROOM

.CoordEvents: db 0

.BGEvents: db 1
	signpost 31, 14, SIGNPOST_ITEM, SilverCaveRoom2HiddenMaxPotion

.ObjectEvents: db 3
	person_event SPRITE_POKE_BALL, 10, 24, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SilverCaveRoom2Calcium, EVENT_SILVER_CAVE_ROOM_2_CALCIUM
	person_event SPRITE_POKE_BALL, 24, 22, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SilverCaveRoom2UltraBall, EVENT_SILVER_CAVE_ROOM_2_ULTRA_BALL
	person_event SPRITE_POKE_BALL, 30, 2, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, SilverCaveRoom2PPUp, EVENT_SILVER_CAVE_ROOM_2_PP_UP

