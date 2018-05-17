# Remove Scoreboard Objectives
scoreboard objectives remove CONST
scoreboard objectives remove health
scoreboard objectives remove AffectedItems
scoreboard objectives remove SuccessCount
scoreboard objectives remove QueryResult
scoreboard objectives remove gameRules
scoreboard objectives remove gameTime

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
scoreboard objectives add AffectedItems dummy
scoreboard objectives add SuccessCount dummy
scoreboard objectives add QueryResult dummy
scoreboard objectives add gameRules dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add health health
scoreboard objectives add loggedOff stat.leaveGame

scoreboard objectives add mineCoal stat.mineBlock.minecraft.coal_ore
scoreboard objectives add mineDiamond stat.mineBlock.minecraft.diamond_ore
scoreboard objectives add mineEmerald stat.mineBlock.minecraft.emerald_ore
scoreboard objectives add mineLapis stat.mineBlock.minecraft.lapis_ore
scoreboard objectives add mineRedstone stat.mineBlock.minecraft.redstone_ore

scoreboard objectives add holdingTotal dummy
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

scoreboard objectives add pickupEye stat.pickup.minecraft.spider_eye
scoreboard objectives add pickupMutton stat.pickup.minecraft.cooked_mutton
scoreboard objectives add pickupFish stat.pickup.minecraft.cooked_fish
scoreboard objectives add pickupPie stat.pickup.minecraft.pumpkin_pie
scoreboard objectives add pickupPotato stat.pickup.minecraft.baked_potato
scoreboard objectives add pickupGlass stat.pickup.minecraft.glass

# Remove Scoreboard Teams
scoreboard teams remove lobby
scoreboard teams add spectator
scoreboard teams remove blue
scoreboard teams remove red

# Add And Configure Scoreboard Teams
scoreboard teams add lobby Lobby
scoreboard teams add spectator Spectator

scoreboard teams add blue Blue
scoreboard teams option blue collisionRule pushOtherTeams
scoreboard teams option blue color blue
scoreboard teams option blue deathMessageVisibility always
scoreboard teams option blue friendlyfire false
scoreboard teams option blue nametagVisibility always

scoreboard teams add red Red
scoreboard teams option red collisionRule pushOtherTeams
scoreboard teams option red color red
scoreboard teams option red deathMessageVisibility always
scoreboard teams option red friendlyfire false
scoreboard teams option red nametagVisibility always

# AddFakePlayersToTeam
scoreboard teams join blue Blue
scoreboard teams join red Red

# RemoveScoreboardTags
scoreboard players tag @a remove Registered
scoreboard players tag @a remove Winner
scoreboard players tag @a remove Spectating
scoreboard players tag @a remove Playing
scoreboard players tag @a remove ClassElytra
scoreboard players tag @a remove ClassPearl
scoreboard players tag @a remove ClassLadder

# Set Default Gamerules
gamerule timelimit 10
gamerule announceAdvancements false
gamerule spectatorsGenerateChunks false
gamerule LengthOfRound 10
difficulty peaceful

kill @e[type=area_effect_cloud,name=Main]
summon minecraft:area_effect_cloud 80 96 3152 {CustomName:Main, CustomNameVisible:1b, Duration:2147483647}
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove EndRound
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove RoundInProgress
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove StartRound
scoreboard players add @e[type=area_effect_cloud,name=Main] AffectedItems 0
scoreboard players add @e[type=area_effect_cloud,name=Main] SuccessCount 0
scoreboard players add @e[type=area_effect_cloud,name=Main] QueryResult 0
stats entity @e[type=area_effect_cloud,name=Main] set AffectedItems @s AffectedItems
stats entity @e[type=area_effect_cloud,name=Main] set SuccessCount @s SuccessCount
stats entity @e[type=area_effect_cloud,name=Main] set QueryResult @s QueryResult

gamerule gameLoopFunction monster_kids:main