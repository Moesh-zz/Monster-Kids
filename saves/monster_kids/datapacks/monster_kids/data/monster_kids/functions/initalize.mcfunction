# Remove Scoreboard Objectives
scoreboard objectives remove CONST
scoreboard objectives remove health
scoreboard objectives remove gameRules
scoreboard objectives remove gameTime
scoreboard objectives remove AffectedItems
scoreboard objectives remove LengthOfRound
scoreboard objectives remove timelimit

scoreboard objectives remove mineCoal
scoreboard objectives remove mineDiamond
scoreboard objectives remove mineEmerald
scoreboard objectives remove mineLapis
scoreboard objectives remove mineRedstone

scoreboard objectives remove holdingTotal

scoreboard objectives remove bankedCurrent
scoreboard objectives remove bankedTotal

scoreboard objectives remove scoreBlue
scoreboard objectives remove scoreRed
scoreboard objectives remove scoreTotal

scoreboard objectives remove scoreHeldBlue
scoreboard objectives remove scoreHeldRed

scoreboard objectives remove scoreTotalBlue
scoreboard objectives remove scoreTotalRed

scoreboard objectives remove loggedOff
scoreboard objectives remove combinedScores
scoreboard objectives remove displayScores
scoreboard objectives remove compareScores
scoreboard objectives remove totalCoal

scoreboard objectives remove EffectCoal
scoreboard objectives remove EffectEmerald
scoreboard objectives remove EffectRedstone
scoreboard objectives remove EffectLapis
scoreboard objectives remove EffectDiamond

scoreboard objectives remove teamSelected
scoreboard objectives remove classSelected
scoreboard objectives remove startRound
scoreboard objectives remove spectate

scoreboard objectives remove pickupTimer
scoreboard objectives remove pickupStreak
scoreboard objectives remove displayStreak
scoreboard objectives remove pickupEye
scoreboard objectives remove pickupMutton
scoreboard objectives remove pickupFish
scoreboard objectives remove pickupPie
scoreboard objectives remove pickupPotato
scoreboard objectives remove pickupGlass

# Add Scoreboard Objectives
scoreboard objectives add CONST dummy
scoreboard players set SIXTY CONST 60
scoreboard players set TWENTY CONST 20
scoreboard objectives add gameRules dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add AffectedItems dummy
scoreboard objectives add LengthOfRound dummy
scoreboard players set VAR LengthOfRound 10
scoreboard objectives add timelimit dummy
scoreboard players set VAR timelimit 10
scoreboard objectives add health health
scoreboard objectives add loggedOff minecraft.custom:minecraft.leave_game

scoreboard objectives add mineCoal minecraft.mined:minecraft.coal_ore
scoreboard objectives add mineDiamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mineEmerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add mineLapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add mineRedstone minecraft.mined:minecraft.redstone_ore

scoreboard objectives add holdingTotal dummy Food
scoreboard objectives setdisplay belowName holdingTotal
scoreboard objectives setdisplay list holdingTotal

scoreboard objectives add bankedCurrent dummy
scoreboard objectives add bankedTotal dummy

scoreboard objectives add scoreHeldBlue dummy
scoreboard objectives add scoreHeldRed dummy

scoreboard objectives add scoreTotalBlue dummy
scoreboard objectives add scoreTotalRed dummy
scoreboard objectives add scoreTotal dummy

scoreboard objectives add combinedScores dummy
scoreboard players set Blue combinedScores 0
scoreboard players set Red combinedScores 0

scoreboard objectives add displayScores dummy Food
scoreboard players set Blue displayScores 0
scoreboard players set Red displayScores 0

scoreboard objectives add EffectCoal dummy
scoreboard objectives add EffectEmerald dummy
scoreboard objectives add EffectRedstone dummy
scoreboard objectives add EffectLapis dummy
scoreboard objectives add EffectDiamond dummy

scoreboard objectives add teamSelected trigger
scoreboard objectives add classSelected trigger
scoreboard objectives add startRound trigger
scoreboard objectives add spectate trigger

scoreboard objectives setdisplay sidebar displayScores
scoreboard objectives add pickupTimer dummy
scoreboard objectives add pickupStreak dummy
scoreboard objectives add displayStreak dummy

scoreboard objectives add pickupFood minecraft.picked_up:minecraft.cooked_beef
scoreboard objectives add Food dummy
scoreboard objectives add pickupGlass minecraft.picked_up:minecraft.glass

# Remove Scoreboard Teams
team remove lobby
team remove spectator
team remove blue
team remove red

# Add And Configure Scoreboard Teams
team add lobby {"text":"Lobby"}
team add spectator {"text":"Spectator"}

team add blue {"text":"Blue"}
team modify blue collisionRule pushOtherTeams
team modify blue color blue
team modify blue deathMessageVisibility always
team modify blue friendlyFire false
team modify blue nametagVisibility always

team add red {"text":"Red"}
team modify red collisionRule pushOtherTeams
team modify red color red
team modify red deathMessageVisibility always
team modify red friendlyire false
team modify red nametagVisibility always

# AddFakePlayersToTeam
team join blue Blue
team join red Red

# RemoveScoreboardTags
tag @a remove Registered
tag @a remove Winner
tag @a remove Spectating
tag @a remove Playing
tag @a remove ClassElytra
tag @a remove ClassPearl
tag @a remove ClassLadder

# Set Default Gamerules
gamerule announceAdvancements false
gamerule spectatorsGenerateChunks false
difficulty peaceful

kill @e[type=minecraft:area_effect_cloud,tag=Main]
summon minecraft:area_effect_cloud 80 96 3152 {CustomName:"{\"text\":\"Main\"}",Tags:["Main"], CustomNameVisible:1b, Duration:2147483647}
tag @e[type=minecraft:area_effect_cloud,tag=Main] remove EndRound
tag @e[type=minecraft:area_effect_cloud,tag=Main] remove RoundInProgress
tag @e[type=minecraft:area_effect_cloud,tag=Main] remove StartRound