const_value set 2
	const CELADONCAFE_SUPER_NERD
	const CELADONCAFE_FISHER1
	const CELADONCAFE_FISHER2
	const CELADONCAFE_FISHER3
	const CELADONCAFE_TEACHER
	const CELADONCAFE_BROCK
	const CELADONCAFE_MISTY
	const CELADONCAFE_LTSURGE
	const CELADONCAFE_ERIKA
	const CELADONCAFE_JANINE
	const CELADONCAFE_SABRINA
	const CELADONCAFE_BLAINE
	const CELADONCAFE_BLUE

CeladonCafe_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1
    
    dbw MAPCALLBACK_SPRITES, .leader_sprites
    
.leader_sprites:
    disappear CELADONCAFE_BROCK
	disappear CELADONCAFE_MISTY
	disappear CELADONCAFE_LTSURGE
	disappear CELADONCAFE_ERIKA
	disappear CELADONCAFE_JANINE
	disappear CELADONCAFE_SABRINA
	disappear CELADONCAFE_BLAINE
	disappear CELADONCAFE_BLUE
    checkevent EVENT_BEAT_RED
    iffalse .done
    callasm .find_shown_leader
    if_equal 0, .show_brock
    if_equal 1, .show_misty
    if_equal 2, .show_lt_surge
    if_equal 3, .show_erika
    if_equal 4, .show_janine
    if_equal 5, .show_sabrina
    if_equal 6, .show_blaine
    appear CELADONCAFE_BLUE
    
.done:
    end
    
.show_brock:
    appear CELADONCAFE_BROCK
    end
.show_misty:
    appear CELADONCAFE_MISTY
    end
.show_lt_surge:
    appear CELADONCAFE_LTSURGE
    end
.show_erika:
    appear CELADONCAFE_ERIKA
    end
.show_janine:
    appear CELADONCAFE_JANINE
    end
.show_sabrina:
    appear CELADONCAFE_SABRINA
    end
.show_blaine:
    appear CELADONCAFE_BLAINE
    end
    
.find_shown_leader:
    ld a, [wRematchLeaders]
    swap a
    and 7
    ld [ScriptVar], a
    ret
    
SuperNerdScript_0x73049:
	faceplayer
	opentext
	writetext UnknownText_0x730de
	waitbutton
	closetext
	end

FisherScript_0x73051:
	opentext
	writetext UnknownText_0x73129
	waitbutton
	closetext
	faceplayer
	opentext
	writetext UnknownText_0x7313a
	waitbutton
	closetext
	spriteface CELADONCAFE_FISHER1, LEFT
	end

FisherScript_0x73062:
	opentext
	writetext UnknownText_0x7316a
	waitbutton
	closetext
	faceplayer
	opentext
	writetext UnknownText_0x73178
	waitbutton
	closetext
	spriteface CELADONCAFE_FISHER2, RIGHT
	end

FisherScript_0x73073:
	opentext
	writetext UnknownText_0x731ae
	waitbutton
	closetext
	faceplayer
	opentext
	writetext UnknownText_0x731bd
	waitbutton
	closetext
	spriteface CELADONCAFE_FISHER3, RIGHT
	end

TeacherScript_0x73084:
	checkitem COIN_CASE
	iftrue UnknownScript_0x7309a
	opentext
	writetext UnknownText_0x73201
	waitbutton
	closetext
	faceplayer
	opentext
	writetext UnknownText_0x73212
	waitbutton
	closetext
	spriteface CELADONCAFE_TEACHER, LEFT
	end

UnknownScript_0x7309a:
	opentext
	writetext UnknownText_0x73254
	waitbutton
	closetext
	spriteface CELADONCAFE_TEACHER, RIGHT
	opentext
	writetext UnknownText_0x73278
	waitbutton
	closetext
	spriteface CELADONCAFE_TEACHER, LEFT
	end

EatathonContestPoster:
	jumptext EatathonContestPosterText

CeladonCafeTrashcan:
	checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	iftrue .TrashEmpty
	giveitem LEFTOVERS
	iffalse .PackFull
	opentext
	itemtotext LEFTOVERS, $0
	writetext FoundLeftoversText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	end

.PackFull:
	opentext
	itemtotext LEFTOVERS, $0
	writetext FoundLeftoversText
	buttonsound
	writetext NoRoomForLeftoversText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd trashcan

UnknownText_0x730de:
	text "Hi!"

	para "We're holding an"
	line "eatathon contest."

	para "We can't serve you"
	line "right now. Sorry."
	done

UnknownText_0x73129:
	text "…Snarfle, chew…"
	done

UnknownText_0x7313a:
	text "Don't talk to me!"

	para "You'll break my"
	line "concentration!"
	done

UnknownText_0x7316a:
	text "…Gulp… Chew…"
	done

UnknownText_0x73178:
	text "I take quantity"
	line "over quality!"

	para "I'm happy when I'm"
	line "full!"
	done

UnknownText_0x731ae:
	text "Munch, munch…"
	done

UnknownText_0x731bd:
	text "The food is good"
	line "here, but GOLDEN-"
	cont "ROD has the best"
	cont "food anywhere."
	done

UnknownText_0x73201:
	text "Crunch… Crunch…"
	done

UnknownText_0x73212:
	text "Nobody here will"
	line "give you a COIN"

	para "CASE. You should"
	line "look in JOHTO."
	done

UnknownText_0x73254:
	text "Crunch… Crunch…"

	para "I can keep eating!"
	done

UnknownText_0x73278:
	text "More, CHEF!"
	done

EatathonContestPosterText:
	text "Eatathon Contest!"
	line "No time limit!"

	para "A battle without"
	line "end! The biggest"

	para "muncher gets it"
	line "all for free!"
	done

FoundLeftoversText:
	text "<PLAYER> found"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

NoRoomForLeftoversText:
	text "But <PLAYER> can't"
	line "hold another item…"
	done
    
BrockRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext BrockAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext BrockRematchWinText, BrockRematchLossText
    setlasttalked CELADONCAFE_BROCK
    loadtrainer BROCK, BROCK2
    jump StartBattle
    
MistyRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext MistyAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext MistyRematchWinText, MistyRematchLossText
    setlasttalked CELADONCAFE_MISTY
    loadtrainer MISTY, MISTY2
    jump StartBattle
    
LtSurgeRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext LtSurgeAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext LtSurgeRematchWinText, LtSurgeRematchLossText
    setlasttalked CELADONCAFE_LTSURGE
    loadtrainer LT_SURGE, LT_SURGE2
    jump StartBattle
    
ErikaRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext ErikaAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext ErikaRematchWinText, ErikaRematchLossText
    setlasttalked CELADONCAFE_ERIKA
    loadtrainer ERIKA, ERIKA2
    jump StartBattle
    
JanineRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext JanineAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext JanineRematchWinText, JanineRematchLossText
    setlasttalked CELADONCAFE_JANINE
    loadtrainer JANINE, JANINE2
    jump StartBattle
    
SabrinaRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext SabrinaAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext SabrinaRematchWinText, SabrinaRematchLossText
    setlasttalked CELADONCAFE_SABRINA
    loadtrainer SABRINA, SABRINA2
    jump StartBattle
    
BlaineRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext BlaineAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext BlaineRematchWinText, BlaineRematchLossText
    setlasttalked CELADONCAFE_BLAINE
    loadtrainer BLAINE, BLAINE2
    jump StartBattle
    
BlueRematchScript:
    scall CheckBattleAlready
    faceplayer
    opentext 
    writetext BlueAskRematchText
    yesorno
    iffalse DidNotBattle
    winlosstext BlueRematchWinText, BlueRematchLossText
    setlasttalked CELADONCAFE_BLUE
    loadtrainer BLUE, BLUE2
    jump StartBattle
    
CheckBattleAlready:
    checkevent EVENT_BEAT_KANTO_LEADER
    iffalse GoBack
    faceplayer
    opentext 
    writetext BattledAlreadyText
    waitbutton
    closetext
    end_all
    
DidNotBattle:
    writetext DidNotBattleText
    waitbutton
    closetext
GoBack:
    end
    
StartBattle:
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
    startbattle
    reloadmap
    iffalse .LossToLeader
    opentext
    writetext BeatLeaderText
    jump .WonToLeader
.LossToLeader:
    opentext
    writetext LoseLeaderText
.WonToLeader:
    waitbutton
    closetext
	special HealParty
    setevent EVENT_BEAT_KANTO_LEADER
    end
    
BrockAskRematchText:
MistyAskRematchText:
LtSurgeAskRematchText:
ErikaAskRematchText:
JanineAskRematchText:
SabrinaAskRematchText:
BlaineAskRematchText:
BlueAskRematchText:
    text "Battle?"
    done

BrockRematchWinText:
MistyRematchWinText:
LtSurgeRematchWinText:
ErikaRematchWinText:
JanineRematchWinText:
SabrinaRematchWinText:
BlaineRematchWinText:
BlueRematchWinText:
    text "You win."
    done

BrockRematchLossText:
MistyRematchLossText:
LtSurgeRematchLossText:
ErikaRematchLossText:
JanineRematchLossText:
SabrinaRematchLossText:
BlaineRematchLossText:
BlueRematchLossText:
    text "You lose."
    done
    
DidNotBattleText:
    text "Next time."
    done
    
BattledAlreadyText:
    text "Can't battle."
    done

BeatLeaderText:
    text "Good battle."
    done
    
LoseLeaderText:
    text "I'm good."
    done

CeladonCafe_MapEventHeader:: db 0, 0

.Warps: db 2
	warp_def 7, 10, 9, CELADON_CITY
	warp_def 7, 11, 9, CELADON_CITY

.CoordEvents: db 0

.BGEvents: db 2
	signpost 0, 9, SIGNPOST_READ, EatathonContestPoster
	signpost 1, 11, SIGNPOST_READ, CeladonCafeTrashcan

.ObjectEvents: db 13
	person_event SPRITE_SUPER_NERD, 3, 13, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SuperNerdScript_0x73049, -1
	person_event SPRITE_FISHER, 6, 8, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FisherScript_0x73051, -1
	person_event SPRITE_FISHER, 7, 5, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, FisherScript_0x73062, -1
	person_event SPRITE_FISHER, 2, 5, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, FisherScript_0x73073, -1
	person_event SPRITE_TEACHER, 3, 8, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, TeacherScript_0x73084, -1
	person_event SPRITE_BROCK,   6, 2,  SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BrockRematchScript,   EVENT_CAFE_BROCK
	person_event SPRITE_MISTY,   4, 1,  SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED,   PERSONTYPE_SCRIPT, 0, MistyRematchScript,   EVENT_CAFE_MISTY
	person_event SPRITE_SURGE,   1, 3,  SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, LtSurgeRematchScript,   EVENT_CAFE_LTSURGE
	person_event SPRITE_ERIKA,   5, 4,  SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, ErikaRematchScript,   EVENT_CAFE_ERIKA
	person_event SPRITE_JANINE,  5, 11, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE,  PERSONTYPE_SCRIPT, 0, JanineRematchScript,  EVENT_CAFE_JANINE
	person_event SPRITE_SABRINA, 2, 11, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED,   PERSONTYPE_SCRIPT, 0, SabrinaRematchScript, EVENT_CAFE_SABRINA
	person_event SPRITE_BLAINE,  6, 12, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BlaineRematchScript,  EVENT_CAFE_BLAINE
	person_event SPRITE_BLUE,    6, 15, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED,   PERSONTYPE_SCRIPT, 0, BlueRematchScript,    EVENT_CAFE_BLUE

