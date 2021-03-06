INCLUDE "includes.asm"


SECTION "Egg Moves", ROMX

; All instances of Charm, Steel Wing, Sweet Scent, and Lovely Kiss were
; removed from egg move lists in Crystal, because they are also TMs.

; Staryu's egg moves were removed in Crystal, because Staryu is genderless
; and can only breed with Ditto.


INCLUDE "data/egg_move_pointers.asm"

; If the Pokemon, or an evolution of the Pokemon, learns the move through breeding
; at any time, give it the move.
; If the Pokemon, or an evolution of the Pokemon, learns the move through a
; move tutor at any time, give it the move.
; If the Pokemon, or an evolution of the Pokemon, has the move in an event
; at any time, give it the move.
; If the Pokemon learns the move through a TM NOT in Gen 2, give it the move.
; If the Pokemon learns the move through a TM in Gen 2, DO NOT give it the move
; and take it away if it would learn it from breeding or move tutor,
; unless the unevolved Pokemon cannot learn the same TM.
; If the Pokemon learns a move through TM, that also has a TM in Gen 2,
; but does not learn it in Gen 2, give it the move. You will remove it later
; under certain circumstances.
; If the Pokemon would have learned a move through breeding, but learns it through 
; level up, leave the move. You will remove it later.

;								   123456789ABCD;XXX
EggMoves:: ;    CURRENT MOVE -	db THIEF        ;168

BulbasaurEggMoves:
	db RAZOR_WIND	;013
	db SWORDS_DANCE	;014
	db BIND         ;020
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db STRENGTH     ;070
	db MEGA_DRAIN   ;072
	db PETAL_DANCE  ;080
	db STRING_SHOT  ;081
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SLUDGE       ;124
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db SUBSTITUTE   ;164
	db CHARM        ;204
	db SAFEGUARD    ;219
	db $ff

CharmanderEggMoves:
	db MEGA_PUNCH   ;005
	db THUNDERPUNCH ;009
	db SWORDS_DANCE	;014
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db SOLARBEAM    ;076
	db DRAGON_RAGE  ;082
	db FIRE_SPIN    ;083
	db EARTHQUAKE   ;089
	db FISSURE      ;090
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db BELLY_DRUM   ;187
	db OUTRAGE      ;200
	db ANCIENTPOWER ;246
	db BEAT_UP      ;251
	db $ff

SquirtleEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db MIST         ;054
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db EARTHQUAKE   ;089
	db FISSURE      ;090
	db CONFUSION    ;093
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db FORESIGHT    ;193
	db MIRROR_COAT  ;243
	db $ff

CaterpieEggMoves:
	db RAZOR_WIND	;013
	db WHIRLWIND    ;018
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db SOLARBEAM    ;076
	db STRING_SHOT  ;081
	db TOXIC        ;092
	db PSYCHIC_M    ;094
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db REFLECT      ;115
	db BIDE         ;117
	db SWIFT        ;129
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db $ff

WeedleEggMoves:
	db SWORDS_DANCE	;014
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db SOLARBEAM    ;076
	db STRING_SHOT  ;081
	db TOXIC        ;092
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db BIDE         ;117
	db SWIFT        ;129
	db SKULL_BASH   ;130
	db SUBSTITUTE   ;164
	db $ff
	
PidgeyEggMoves:
	db RAZOR_WIND	;013
	db WHIRLWIND    ;018
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db RAGE         ;099
	db MIMIC        ;102
	db SKY_ATTACK   ;143
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db FORESIGHT    ;193
	db STEEL_WING   ;221
	db PURSUIT      ;228
	db $ff

RattataEggMoves:
	db SWORDS_DANCE	;014
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db STRENGTH     ;070
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db FURY_SWIPES  ;154
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db FLAME_WHEEL  ;172
	db REVERSAL     ;179
	db $ff

SpearowEggMoves:
	db PAY_DAY      ;006
	db RAZOR_WIND	;013
	db WHIRLWIND    ;018
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db SONICBOOM    ;049
	db HYPER_BEAM   ;063
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db SKY_ATTACK   ;143
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db SCARY_FACE   ;184
	db FAINT_ATTACK ;185
	db FALSE_SWIPE  ;206
	db $ff

EkansEggMoves:
	db BIND			;020
	db SLAM         ;021
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db DISABLE      ;050
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db SPITE        ;180
	db PURSUIT      ;228
	db CRUNCH       ;242
	db BEAT_UP      ;251
	db $ff

SandshrewEggMoves:
	db SWORDS_DANCE	;014
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db LEECH_LIFE   ;141
	db ROCK_SLIDE   ;157
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db SAFEGUARD    ;219
	db RAPID_SPIN   ;229
	db METAL_CLAW   ;232
	db $ff

NidoranFEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db SUPERSONIC   ;048
	db DISABLE      ;050
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db THUNDERBOLT  ;085
	db EARTHQUAKE   ;089
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db FOCUS_ENERGY ;116
	db FIRE_BLAST   ;126
	db SKULL_BASH   ;130
	db LOVELY_KISS  ;142
	db ROCK_SLIDE   ;157
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db CHARM        ;204
	db BEAT_UP      ;251
	db $ff

NidoranMEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db SUPERSONIC   ;048
	db DISABLE      ;050
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db THUNDERBOLT  ;085
	db EARTHQUAKE   ;089
	db FISSURE      ;090
	db CONFUSION    ;093
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db FIRE_BLAST   ;126
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db LOVELY_KISS  ;142
	db ROCK_SLIDE   ;157
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db BEAT_UP      ;251
	db $ff

VulpixEggMoves:
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db DISABLE      ;050
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db SOLARBEAM    ;076
	db HYPNOSIS     ;095
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db SPITE        ;180
	db FAINT_ATTACK ;185
	db $ff

ZubatEggMoves:
	db RAZOR_WIND	;013
	db GUST         ;016
	db WHIRLWIND    ;018
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db HYPNOSIS     ;095
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db LEECH_LIFE   ;141
	db SKY_ATTACK   ;143
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db PURSUIT      ;228
	db $ff

OddishEggMoves:
	db SWORDS_DANCE	;014
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db LEECH_SEED   ;073
	db RAZOR_LEAF   ;075
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db CHARM        ;204
	db SYNTHESIS    ;235
	db $ff

ParasEggMoves:
	db SWORDS_DANCE	;014
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db PSYBEAM      ;060
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db MEGA_DRAIN   ;072
	db LEECH_SEED   ;073
	db STRING_SHOT  ;081
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db LEECH_LIFE   ;141
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db FALSE_SWIPE  ;206
	db PURSUIT      ;228
	db SWEET_SCENT  ;230
	db $ff

VenonatEggMoves:
	db RAZOR_WIND	;013
	db WHIRLWIND    ;018
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db STRING_SHOT  ;081
	db AGILITY      ;097
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db SCREECH      ;103
	db REFLECT      ;115
	db LEECH_LIFE   ;141
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db GIGA_DRAIN   ;202
	db BATON_PASS   ;226
	db $ff

DiglettEggMoves:
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db PURSUIT      ;228
	db ANCIENTPOWER ;246
	db BEAT_UP      ;251
	db $ff

MeowthEggMoves:
	db PAY_DAY      ;006
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db TAIL_WHIP    ;039
	db ROAR         ;046
	db SING         ;047
	db WATER_GUN    ;055
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db PETAL_DANCE  ;080
	db THUNDERBOLT  ;085
	db HYPNOSIS     ;095
	db RAGE         ;099
	db MIMIC        ;102
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db SPITE        ;180
	db CHARM        ;204
	db $ff

PsyduckEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db PSYBEAM      ;060
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db PETAL_DANCE  ;080
	db PSYCHIC_M    ;094
	db HYPNOSIS     ;095
	db RAGE         ;099
	db MIMIC        ;102
	db CONFUSE_RAY  ;109
	db LIGHT_SCREEN ;113
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db FORESIGHT    ;193
	db CROSS_CHOP   ;238
	db FUTURE_SIGHT ;248
	db $ff

MankeyEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db MEDITATE     ;096
	db RAGE         ;099
	db MIMIC        ;102
	db METRONOME    ;118
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db FORESIGHT    ;193
	db BEAT_UP      ;251
	db $ff

GrowlitheEggMoves:
	db DOUBLE_KICK  ;024
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db STRENGTH     ;070
	db SOLARBEAM    ;076
	db DRAGON_RAGE  ;082
	db FIRE_SPIN    ;083
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db SUBSTITUTE   ;164
	db SAFEGUARD    ;219
	db CRUNCH       ;242
	db $ff

PoliwagEggMoves:
	db MEGA_PUNCH   ;005
	db ICE_PUNCH    ;008
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db MIST         ;054
	db WATER_GUN    ;055
	db HYDRO_PUMP   ;056
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db GROWTH       ;074
	db EARTHQUAKE   ;089
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db METRONOME    ;118
	db SKULL_BASH   ;130
	db LOVELY_KISS  ;142
	db PSYWAVE      ;149
	db SPLASH       ;150
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db MIND_READER  ;170
	db $ff

AbraEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDER_WAVE ;086
	db DIG          ;091
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db ENCORE       ;227
	db $ff

MachopEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db ROLLING_KICK ;027
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db FISSURE      ;090
	db MEDITATE     ;096
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db METRONOME    ;118
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db ENCORE       ;227
	db $ff

BellsproutEggMoves:
	db SWORDS_DANCE	;014
	db BIND			;020
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db LEECH_LIFE   ;141
	db LOVELY_KISS  ;142
	db SUBSTITUTE   ;164
	db SYNTHESIS    ;235
	db ENCORE       ;227
	db $ff

TentacoolEggMoves:
	db SWORDS_DANCE	;014
	db BIND			;020
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db AURORA_BEAM  ;062
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db RAGE         ;099
	db MIMIC        ;102
	db CONFUSE_RAY  ;109
	db HAZE         ;114
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db BUBBLE       ;145
	db SUBSTITUTE   ;164
	db SAFEGUARD    ;219
	db RAPID_SPIN   ;229
	db MIRROR_COAT  ;243
	db $ff

GeodudeEggMoves:
	db MEGA_PUNCH   ;005
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER      ;087
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db METRONOME    ;118
	db SELFDESTRUCT ;120
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db $ff

PonytaEggMoves:
	db PAY_DAY      ;006
	db DOUBLE_KICK  ;024
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db STRENGTH     ;070
	db FISSURE      ;090
	db HYPNOSIS     ;095
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db SUBSTITUTE   ;164
	db FLAME_WHEEL  ;172
	db CHARM        ;204
	db $ff

SlowpokeEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db ICE_PUNCH    ;008
	db STOMP        ;023
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDER_WAVE ;086
	db FISSURE      ;090
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db BELLY_DRUM   ;187
	db SAFEGUARD    ;219
	db FUTURE_SIGHT ;248
	db $ff
	
MagnemiteEggMoves:
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db AGILITY      ;097
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db EXPLOSION    ;153
	db SUBSTITUTE   ;164
	db $ff

FarfetchDEggMoves:
	db RAZOR_WIND	;013
	db SWORDS_DANCE	;014
	db GUST         ;016
	db WHIRLWIND    ;018
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db AGILITY      ;097
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db MIRROR_MOVE  ;119
	db SKULL_BASH   ;130
	db SKY_ATTACK   ;143
	db SLASH        ;163
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db FORESIGHT    ;193
	db STEEL_WING   ;221
	db $ff

DoduoEggMoves:
	db SWORDS_DANCE	;014
	db WHIRLWIND    ;018
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db SKY_ATTACK   ;143
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db FAINT_ATTACK ;185
	db MIRROR_COAT  ;243
	db $ff

SeelEggMoves:
	db PAY_DAY      ;006
	db SLAM         ;021
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db DISABLE      ;050
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db PECK         ;064
	db STRENGTH     ;070
	db RAGE         ;099
	db MIMIC        ;102
	db LICK         ;122
	db SKULL_BASH   ;130
	db SUBSTITUTE   ;164
	db PERISH_SONG  ;195
	db ENCORE       ;227
	db $ff

GrimerEggMoves:
	db BODY_SLAM    ;034
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db STRENGTH     ;070
	db MEGA_DRAIN   ;072
	db THUNDERBOLT  ;085
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db SELFDESTRUCT ;120
	db LICK         ;122
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db MEAN_LOOK    ;212
	db $ff

ShellderEggMoves:
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db TWINEEDLE    ;041
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db SCREECH      ;103
	db BARRIER      ;112
	db REFLECT      ;115
	db SELFDESTRUCT ;120
	db EXPLOSION    ;153
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db RAPID_SPIN   ;229
	db $ff

GastlyEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db HEADBUTT     ;029
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db DISABLE      ;050
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db MEGA_DRAIN   ;072
	db THUNDERBOLT  ;085
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db METRONOME    ;118
	db SELFDESTRUCT ;120
	db SMOG         ;123
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db EXPLOSION    ;153
	db SUBSTITUTE   ;164
	db PERISH_SONG  ;195
	db $ff

OnixEggMoves:
	db BIND			;020
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db DEFENSE_CURL ;111
	db SELFDESTRUCT ;120
	db SKULL_BASH   ;130
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SHARPEN      ;159
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

DrowzeeEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db $ff

KrabbyEggMoves:
	db SWORDS_DANCE	;014
	db SLAM         ;021
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db DIG          ;091
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db BIDE         ;117
	db AMNESIA      ;133
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

VoltorbEggMoves:
	db TAKE_DOWN    ;036
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db AGILITY      ;097
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SELFDESTRUCT ;120
	db SKULL_BASH   ;130
	db EXPLOSION    ;153
	db SUBSTITUTE   ;164
	db $ff

ExeggcuteEggMoves:
	db SWORDS_DANCE	;014
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db MEGA_DRAIN   ;072
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SELFDESTRUCT ;120
	db EGG_BOMB     ;121
	db PSYWAVE      ;149
	db EXPLOSION    ;153
	db SUBSTITUTE   ;164
	db SYNTHESIS    ;235
	db MOONLIGHT    ;236
	db ANCIENTPOWER ;246
	db $ff

CuboneEggMoves:
	db MEGA_PUNCH   ;005
	db THUNDERPUNCH ;009
	db SWORDS_DANCE	;014
	db DOUBLE_KICK  ;024
	db MEGA_KICK    ;025
	db FURY_ATTACK  ;031
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db SING         ;047
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER      ;087
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db BELLY_DRUM   ;187
	db PERISH_SONG  ;195
	db ANCIENTPOWER ;246
	db $ff

LickitungEggMoves:
	db DOUBLESLAP   ;003
	db MEGA_PUNCH   ;005
	db SWORDS_DANCE	;014
	db BIND			;020
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db BELLY_DRUM   ;187
	db MAGNITUDE    ;222
	db $ff

KoffingEggMoves:
	db FLAMETHROWER ;053
	db PSYBEAM      ;060
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db SELFDESTRUCT ;120
	db PSYWAVE      ;149
	db EXPLOSION    ;153
	db SUBSTITUTE   ;164
	db DESTINY_BOND ;194
	db PAIN_SPLIT   ;220
	db $ff

RhyhornEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db FIRE_PUNCH   ;007
	db THUNDERPUNCH ;009
	db SWORDS_DANCE	;014
	db MEGA_KICK    ;025
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db MAGNITUDE    ;222
	db PURSUIT      ;228
	db CRUNCH       ;242
	db $ff

ChanseyEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db EGG_BOMB     ;121
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db ROCK_SLIDE   ;157
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db HEAL_BELL    ;215
	db PRESENT      ;217
	db $ff

TangelaEggMoves:
	db SWORDS_DANCE	;014
	db BIND			;020
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db MEGA_DRAIN   ;072
	db LEECH_SEED   ;073
	db SLEEP_POWDER ;079
	db CONFUSION    ;093
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db AMNESIA      ;133
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

KangaskhanEggMoves:
	db MEGA_PUNCH   ;005
	db STOMP        ;023
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db SING         ;047
	db DISABLE      ;050
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db FOCUS_ENERGY ;116
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FORESIGHT    ;193
	db SAFEGUARD    ;219
	db $ff

HorseaEggMoves:
	db RAZOR_WIND	;013
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db DISABLE      ;050
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db AURORA_BEAM  ;062
	db HYPER_BEAM   ;063
	db DRAGON_RAGE  ;082
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db SKULL_BASH   ;130
	db SPLASH       ;150
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db OCTAZOOKA    ;190
	db $ff

GoldeenEggMoves:
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db HYDRO_PUMP   ;056
	db ICE_BEAM     ;058
	db PSYBEAM      ;060
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db SKULL_BASH   ;130
	db SUBSTITUTE   ;164
	db $ff

StaryuEggMoves:
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db BUBBLEBEAM   ;061
	db AURORA_BEAM  ;062
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db $ff

MrMimeEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db HYPNOSIS     ;095
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db CONFUSE_RAY  ;109
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db SKULL_BASH   ;130
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db FUTURE_SIGHT ;248
	db $ff

ScytherEggMoves:
	db RAZOR_WIND	;013
	db SWORDS_DANCE	;014
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db SONICBOOM    ;049
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db SKULL_BASH   ;130
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db SAFEGUARD    ;219
	db BATON_PASS   ;226
	db $ff

PinsirEggMoves:
	db SWORDS_DANCE	;014
	db BIND			;020
	db FURY_ATTACK  ;031
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db SEISMIC_TOSS ;069
	db STRING_SHOT  ;081
	db ROCK_THROW   ;088
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

TaurosEggMoves:
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER      ;087
	db EARTHQUAKE   ;089
	db FISSURE      ;090
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db $ff

MagikarpEggMoves:
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db HYDRO_PUMP   ;056
	db SURF         ;057
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db STRENGTH     ;070
	db DRAGON_RAGE  ;082
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db EARTHQUAKE   ;089
	db TOXIC        ;092
	db RAGE         ;099
	db MIMIC        ;102
	db DOUBLE_TEAM  ;104
	db REFLECT      ;115
	db FIRE_BLAST   ;126
	db WATERFALL    ;127
	db SKULL_BASH   ;130
	db BUBBLE       ;145
	db SUBSTITUTE   ;164
	db $ff

LaprasEggMoves:
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db ROAR         ;046
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db AURORA_BEAM  ;062
	db HYPER_BEAM   ;063
	db DRAGON_RAGE  ;082
	db THUNDERBOLT  ;085
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db FORESIGHT    ;193
	db $ff

EeveeEggMoves:
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db SING         ;047
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db HYPER_BEAM   ;063
	db STRENGTH     ;070
	db GROWTH       ;074
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db FIRE_BLAST   ;126
	db WATERFALL    ;127
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db CHARM        ;204
	db $ff
	
PorygonEggMoves:
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db BARRIER      ;112
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db DREAM_EATER  ;138
	db PSYWAVE      ;149
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db $ff

OmanyteEggMoves:
	db BIND			;020
	db SLAM         ;021
	db HORN_DRILL   ;032
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db SUPERSONIC   ;048
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db AURORA_BEAM  ;062
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db SEISMIC_TOSS ;069
	db ROCK_THROW   ;088
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db REFLECT      ;115
	db BIDE         ;117
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db $ff

KabutoEggMoves:
	db RAZOR_WIND	;013
	db SWORDS_DANCE	;014
	db MEGA_KICK    ;025
	db HEADBUTT     ;029
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db AURORA_BEAM  ;062
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db SEISMIC_TOSS ;069
	db ROCK_THROW   ;088
	db DIG          ;091
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db CONFUSE_RAY  ;109
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db RAPID_SPIN   ;229
	db $ff

AerodactylEggMoves:
	db RAZOR_WIND	;013
	db WHIRLWIND    ;018
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db DRAGON_RAGE  ;082
	db ROCK_THROW   ;088
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SKY_ATTACK   ;143
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FORESIGHT    ;193
	db STEEL_WING   ;221
	db PURSUIT      ;228
	db $ff

SnorlaxEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db WHIRLWIND    ;018
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db SUBMISSION   ;066
	db COUNTER      ;068
	db THUNDERBOLT  ;085
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db SELFDESTRUCT ;120
	db LICK         ;122
	db SKULL_BASH   ;130
	db LOVELY_KISS  ;142
	db PSYWAVE      ;149
	db SPLASH       ;150
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db CHARM        ;204
	db $ff

DratiniEggMoves:
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db RAZOR_WIND	;013
	db BIND			;020
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db SUPERSONIC   ;048
	db FLAMETHROWER ;053
	db MIST         ;054
	db WATER_GUN    ;055
	db HYDRO_PUMP   ;056
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db DRAGON_RAGE  ;082
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db MIMIC        ;102
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db HAZE         ;114
	db REFLECT      ;115
	db SKULL_BASH   ;130
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db $ff

ChikoritaEggMoves:
	db SWORDS_DANCE	;014
	db VINE_WHIP    ;022
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db LEECH_SEED   ;073
	db PETAL_DANCE  ;080
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db ANCIENTPOWER ;246
	db $ff

CyndaquilEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db THUNDERPUNCH ;009
	db DOUBLE_KICK  ;024
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db SOLARBEAM    ;076
	db EARTHQUAKE   ;089
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db FURY_SWIPES  ;154
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db FORESIGHT    ;193
	db $ff

TotodileEggMoves:
	db MEGA_PUNCH   ;005
	db ICE_PUNCH    ;008
	db RAZOR_WIND	;013
	db SWORDS_DANCE	;014
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db HYDRO_PUMP   ;056
	db ICE_BEAM     ;058
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db MIMIC        ;102
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db CRUNCH       ;242
	db ANCIENTPOWER ;246
	db $ff

SentretEggMoves:
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER      ;087
	db RAGE         ;099
	db MIMIC        ;102
	db FOCUS_ENERGY ;116
	db SUPER_FANG   ;162
	db SLASH        ;163
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db PURSUIT      ;228
	db $ff

HoothootEggMoves:
	db WING_ATTACK  ;017
	db WHIRLWIND    ;018
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db HYPER_BEAM   ;063
	db AGILITY      ;097
	db RAGE         ;099
	db NIGHT_SHADE  ;101
	db MIMIC        ;102
	db REFLECT      ;115
	db MIRROR_MOVE  ;119
	db SKY_ATTACK   ;143
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db $ff

LedybaEggMoves:
	db MEGA_PUNCH   ;005
	db SWORDS_DANCE	;014
	db MEGA_KICK    ;025
	db DOUBLE_EDGE  ;038
	db PSYBEAM      ;060
	db HYPER_BEAM   ;063
	db STRING_SHOT  ;081
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db BIDE         ;117
	db DIZZY_PUNCH  ;146
	db SUBSTITUTE   ;164
	db $ff

SpinarakEggMoves:
	db SWORDS_DANCE	;014
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db TWINEEDLE    ;041
	db SONICBOOM    ;049
	db DISABLE      ;050
	db PSYBEAM      ;060
	db HYPER_BEAM   ;063
	db GROWTH       ;074
	db STRING_SHOT  ;081
	db RAGE         ;099
	db MIMIC        ;102
	db LEECH_LIFE   ;141
	db SUBSTITUTE   ;164
	db BATON_PASS   ;226
	db PURSUIT      ;228
	db $ff

ChinchouEggMoves:
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db MIST         ;054
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db PSYBEAM      ;060
	db HYPER_BEAM   ;063
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db LIGHT_SCREEN ;113
	db AMNESIA      ;133
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

PichuEggMoves:
	db DOUBLESLAP   ;003
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db THUNDERPUNCH ;009
	db FLY          ;019
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db SING         ;047
	db SURF         ;057
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db PETAL_DANCE  ;080
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db DIG          ;091
	db PSYCHIC_M    ;094
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db BIDE         ;117
	db DIZZY_PUNCH  ;146
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db PRESENT      ;217
	db ENCORE       ;227
	db $ff

CleffaEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db PETAL_DANCE  ;080
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db AMNESIA      ;133
	db SOFTBOILED   ;135
	db DREAM_EATER  ;138
	db DIZZY_PUNCH  ;146
	db PSYWAVE      ;149
	db SPLASH       ;150
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db BELLY_DRUM   ;187
	db PRESENT      ;217
	db $ff

IgglybuffEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db SUBMISSION   ;066
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db STRENGTH     ;070
	db PETAL_DANCE  ;080
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db DREAM_EATER  ;138
	db DIZZY_PUNCH  ;146
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db PERISH_SONG  ;195
	db PRESENT      ;217
	db $ff

TogepiEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db PECK         ;064
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db MIRROR_MOVE  ;119
	db SOFTBOILED   ;135
	db DREAM_EATER  ;138
	db SKY_ATTACK   ;143
	db TRI_ATTACK   ;161
	db SUBSTITUTE   ;164
	db FORESIGHT    ;193
	db FUTURE_SIGHT ;248
	db PRESENT      ;217
	db $ff

NatuEggMoves:
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db DRILL_PECK   ;065
	db THUNDER_WAVE ;086
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db HAZE         ;114
	db REFLECT      ;115
	db DREAM_EATER  ;138
	db SKY_ATTACK   ;143
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db STEEL_WING   ;221
	db $ff

MareepEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db DIZZY_PUNCH  ;146
	db SUBSTITUTE   ;164
	db SAFEGUARD    ;219
	db $ff

MarillEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db HYDRO_PUMP   ;056
	db ICE_BEAM     ;058
	db HYPER_BEAM   ;063
	db SEISMIC_TOSS ;069
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db AMNESIA      ;133
	db SUBSTITUTE   ;164
	db BELLY_DRUM   ;187
	db FORESIGHT    ;193
	db PERISH_SONG  ;195
	db FUTURE_SIGHT ;248
	db PRESENT      ;217
	db $ff

SudowoodoEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db RAGE         ;099
	db MIMIC        ;102
	db HARDEN       ;106
	db DEFENSE_CURL ;111
	db SELFDESTRUCT ;120
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db $ff

HoppipEggMoves:
	db PAY_DAY      ;006
	db SWORDS_DANCE	;014
	db DOUBLE_EDGE  ;038
	db GROWL        ;045
	db HYPER_BEAM   ;063
	db CONFUSION    ;093
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db AMNESIA      ;133
	db SUBSTITUTE   ;164
	db ENCORE       ;227
	db $ff

AipomEggMoves:
	db DOUBLESLAP   ;003
	db MEGA_PUNCH   ;005
	db SLAM         ;021
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db METRONOME    ;118
	db DREAM_EATER  ;138
	db SPITE        ;180
	db SUBSTITUTE   ;164
	db PURSUIT      ;228
	db BEAT_UP      ;251
	db $ff

SunkernEggMoves:
	db DOUBLE_EDGE  ;038
	db TOXIC        ;092
	db RAGE         ;099
	db MIMIC        ;102
	db DOUBLE_TEAM  ;104
	db LIGHT_SCREEN ;113
	db BIDE         ;117
	db SPLASH       ;150
	db SUBSTITUTE   ;164
	db $ff

YanmaEggMoves:
	db WHIRLWIND    ;018
	db DOUBLE_EDGE  ;038
	db STRING_SHOT  ;081
	db RAGE         ;099
	db MIMIC        ;102
	db DREAM_EATER  ;138
	db LEECH_LIFE   ;141
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db $ff

WooperEggMoves:
	db MEGA_PUNCH   ;005
	db DOUBLE_KICK  ;024
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db RAGE         ;099
	db MIMIC        ;102
	db RECOVER      ;105
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db SAFEGUARD    ;219
	db ANCIENTPOWER ;246
	db $ff

MurkrowEggMoves:
	db WING_ATTACK  ;017
	db WHIRLWIND    ;018
	db DOUBLE_EDGE  ;038
	db DRILL_PECK   ;065
	db THUNDER_WAVE ;086
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db CONFUSE_RAY  ;109
	db MIRROR_MOVE  ;119
	db DREAM_EATER  ;138
	db SKY_ATTACK   ;143
	db SUBSTITUTE   ;164
	db $ff

MisdreavusEggMoves:
	db DOUBLE_EDGE  ;038
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db HYPNOSIS     ;095
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db DESTINY_BOND ;194
	db $ff

WobbuffetEggMoves:
	db $ff

GirafarigEggMoves:
	db RAZOR_WIND	;013
	db DOUBLE_KICK  ;024
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db AMNESIA      ;133
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db FORESIGHT    ;193
	db FUTURE_SIGHT ;248
	db BEAT_UP      ;251
	db $ff

PinecoEggMoves:
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db PIN_MISSILE  ;042
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db STRING_SHOT  ;081
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SELFDESTRUCT ;120
	db SWIFT        ;129
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

DunsparceEggMoves:
	db BIND			;020
	db FURY_ATTACK  ;031
	db HORN_DRILL   ;032
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db FLAMETHROWER ;053
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db COUNTER      ;068
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db BIDE         ;117
	db DREAM_EATER  ;138
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db ANCIENTPOWER ;246
	db $ff

GligarEggMoves:
	db RAZOR_WIND	;013
	db SWORDS_DANCE	;014
	db WING_ATTACK  ;017
	db DOUBLE_EDGE  ;038
	db COUNTER      ;068
	db AGILITY      ;097
	db RAGE         ;099
	db MIMIC        ;102
	db DREAM_EATER  ;138
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db METAL_CLAW   ;232
	db $ff

SnubbullEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db LEER         ;043
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db METRONOME    ;118
	db LICK         ;122
	db LOVELY_KISS  ;142
	db ROCK_SLIDE   ;157
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db FAINT_ATTACK ;185
	db HEAL_BELL    ;215
	db PRESENT      ;217
	db CRUNCH       ;242
	db $ff

QwilfishEggMoves:
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db SELFDESTRUCT ;120
	db EXPLOSION    ;153
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

ShuckleEggMoves:
	db BIND			;020
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db ACID         ;051
	db STRING_SHOT  ;081
	db RAGE         ;099
	db MIMIC        ;102
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db SWEET_SCENT  ;230
	db $ff

HeracrossEggMoves:
	db SWORDS_DANCE	;014
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db RAGE         ;099
	db MIMIC        ;102
	db HARDEN       ;106
	db BIDE         ;117
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db FLAIL        ;175
	db $ff

SneaselEggMoves:
	db ICE_PUNCH    ;008
	db SWORDS_DANCE	;014
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db ICE_BEAM     ;058
	db LOW_KICK     ;067
	db COUNTER      ;068
	db RAGE         ;099
	db MIMIC        ;102
	db REFLECT      ;115
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db SPITE        ;180
	db FORESIGHT    ;193
	db $ff

TeddiursaEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db SWORDS_DANCE	;014
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db RAGE         ;099
	db MIMIC        ;102
	db FOCUS_ENERGY ;116
	db METRONOME    ;118
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db METAL_CLAW   ;232
	db CRUNCH       ;242
	db $ff

SlugmaEggMoves:
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db SOLARBEAM    ;076
	db EARTHQUAKE   ;089
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db SELFDESTRUCT ;120
	db ACID_ARMOR   ;151
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db $ff

SwinubEggMoves:
	db WHIRLWIND    ;018
	db BODY_SLAM    ;034
	db TAKE_DOWN    ;036
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db ICE_BEAM     ;058
	db HYPER_BEAM   ;063
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db ANCIENTPOWER ;246
	db $ff

CorsolaEggMoves:
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db MIST         ;054
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db CONFUSE_RAY  ;109
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db BIDE         ;117
	db SELFDESTRUCT ;120
	db AMNESIA      ;133
	db EXPLOSION    ;153
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db SAFEGUARD    ;219
	db $ff

RemoraidEggMoves:
	db BIND			;020
	db DOUBLE_EDGE  ;038
	db SUPERSONIC   ;048
	db FLAMETHROWER ;053
	db MIST         ;054
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db AURORA_BEAM  ;062
	db SEISMIC_TOSS ;069
	db STRING_SHOT  ;081
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db SCREECH      ;103
	db HAZE         ;114
	db SWIFT        ;129
	db AMNESIA      ;133
	db SUBSTITUTE   ;164
	db OCTAZOOKA    ;190
	db $ff

DelibirdEggMoves:
	db MEGA_PUNCH   ;005
	db PAY_DAY      ;006
	db ICE_PUNCH    ;008
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db ICE_BEAM     ;058
	db AURORA_BEAM  ;062
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db QUICK_ATTACK ;098
	db RAGE         ;099
	db MIMIC        ;102
	db SKY_ATTACK   ;143
	db SPLASH       ;150
	db SUBSTITUTE   ;164
	db RAPID_SPIN   ;229
	db FUTURE_SIGHT ;248
	db $ff

MantineEggMoves:
	db GUST         ;016
	db SLAM         ;021
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db HYDRO_PUMP   ;056
	db ICE_BEAM     ;058
	db HYPER_BEAM   ;063
	db STRING_SHOT  ;081
	db RAGE         ;099
	db MIMIC        ;102
	db HAZE         ;114
	db AMNESIA      ;133
	db SPLASH       ;150
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db TWISTER      ;239
	db $ff

SkarmoryEggMoves:
	db SWORDS_DANCE	;014
	db WHIRLWIND    ;018
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db DRILL_PECK   ;065
	db COUNTER      ;068
	db RAGE         ;099
	db MIMIC        ;102
	db SKY_ATTACK   ;143
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db PURSUIT      ;228
	db $ff

HoundourEggMoves:
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db FIRE_SPIN    ;083
	db RAGE         ;099
	db MIMIC        ;102
	db DREAM_EATER  ;138
	db SUPER_FANG   ;162
	db SUBSTITUTE   ;164
	db REVERSAL     ;179
	db SPITE        ;180
	db PURSUIT      ;228
	db BEAT_UP      ;251
	db $ff

PhanpyEggMoves:
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db ABSORB       ;071
	db FISSURE      ;090
	db RAGE         ;099
	db MIMIC        ;102
	db FOCUS_ENERGY ;116
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db ANCIENTPOWER ;246
	db $ff

StantlerEggMoves:
	db DOUBLE_KICK  ;024
	db BODY_SLAM    ;034
	db THRASH       ;037
	db DOUBLE_EDGE  ;038
	db BITE         ;044
	db DISABLE      ;050
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db DREAM_EATER  ;138
	db SUBSTITUTE   ;164
	db SPITE        ;180
	db $ff

TyrogueEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db ICE_PUNCH    ;008
	db THUNDERPUNCH ;009
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db SUBMISSION   ;066
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db RAGE         ;099
	db MIMIC        ;102
	db METRONOME    ;118
	db HI_JUMP_KICK ;136
	db DIZZY_PUNCH  ;146
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db MIND_READER  ;170
	db MACH_PUNCH   ;183
	db RAPID_SPIN   ;229
	db $ff

SmoochumEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db HEADBUTT     ;029
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db WATER_GUN    ;055
	db ICE_BEAM     ;058
	db BUBBLEBEAM   ;061
	db HYPER_BEAM   ;063
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db PETAL_DANCE  ;080
	db MEDITATE     ;096
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db LOVELY_KISS  ;142
	db DIZZY_PUNCH  ;146
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db $ff

ElekidEggMoves:
	db KARATE_CHOP  ;002
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db ROLLING_KICK ;027
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db EARTHQUAKE   ;089
	db MEDITATE     ;096
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db BARRIER      ;112
	db LIGHT_SCREEN ;113
	db REFLECT      ;115
	db METRONOME    ;118
	db DIZZY_PUNCH  ;146
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db CROSS_CHOP   ;238
	db $ff

MagbyEggMoves:
	db KARATE_CHOP
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db FLAMETHROWER ;053
	db HYPER_BEAM   ;063
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db SOLARBEAM    ;076
	db RAGE         ;099
	db TELEPORT     ;100
	db MIMIC        ;102
	db SCREECH      ;103
	db BARRIER      ;112
	db FOCUS_ENERGY ;116
	db METRONOME    ;118
	db DIZZY_PUNCH  ;146
	db PSYWAVE      ;149
	db SUBSTITUTE   ;164
	db CROSS_CHOP   ;238
	db $ff

MiltankEggMoves:
	db MEGA_PUNCH   ;005
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db DOUBLE_EDGE  ;038
	db ICE_BEAM     ;058
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db RAGE         ;099
	db MIMIC        ;102
	db METRONOME    ;118
	db DIZZY_PUNCH  ;146
	db ROCK_SLIDE   ;157
	db REVERSAL     ;179
	db SUBSTITUTE   ;164
	db PRESENT      ;217
	db $ff

LarvitarEggMoves:
	db MEGA_PUNCH   ;005
	db FIRE_PUNCH   ;007
	db THUNDERPUNCH ;009
	db STOMP        ;023
	db MEGA_KICK    ;025
	db BODY_SLAM    ;034
	db DOUBLE_EDGE  ;038
	db ROAR         ;046
	db FLAMETHROWER ;053
	db ICE_BEAM     ;058
	db BLIZZARD     ;059
	db LOW_KICK     ;067
	db COUNTER      ;068
	db SEISMIC_TOSS ;069
	db THUNDERBOLT  ;085
	db THUNDER_WAVE ;086
	db THUNDER      ;087
	db RAGE         ;099
	db MIMIC        ;102
	db FOCUS_ENERGY ;116
	db DIZZY_PUNCH  ;146
	db ROCK_SLIDE   ;157
	db SUBSTITUTE   ;164
	db OUTRAGE      ;200
	db PURSUIT      ;228
	db ANCIENTPOWER ;246
	db $ff

DittoEggMoves:
ArticunoEggMoves:
ZapdosEggMoves:
MoltresEggMoves:
MewtwoEggMoves:
MewEggMoves:
UnownEggMoves:
SmeargleEggMoves:
RaikouEggMoves:
EnteiEggMoves:
SuicuneEggMoves:
LugiaEggMoves:
HoohEggMoves:
CelebiEggMoves:
MissingnoEggMoves:
NoEggMoves:
	db $ff
