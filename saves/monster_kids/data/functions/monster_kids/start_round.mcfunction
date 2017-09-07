execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ gamerule LengthOfRound
scoreboard players operation LengthOfRound gameRules = @e[type=area_effect_cloud,name=Main] QueryResult
scoreboard players operation LengthInMinutes gameTime = LengthOfRound gameRules
scoreboard players operation LengthInSeconds gameTime = LengthInMinutes gameTime
scoreboard players operation LengthInSeconds gameTime *= SIXTY CONST
scoreboard players operation LengthInTicks gameTime = LengthInSeconds gameTime
scoreboard players operation LengthInTicks gameTime *= TWENTY CONST
scoreboard players operation CurrentInTicks gameTime = LengthInTicks gameTime

scoreboard players tag * remove FoundEye
scoreboard players tag * remove FoundFish
scoreboard players tag * remove FoundGlass
scoreboard players tag * remove FoundMutton
scoreboard players tag * remove FoundPie
scoreboard players tag * remove FoundPotato

scoreboard players reset * bankedTotal
scoreboard players reset * classSelected
scoreboard players reset * holdingEye
scoreboard players reset * holdingFish
scoreboard players reset * holdingMutton
scoreboard players reset * holdingPie
scoreboard players reset * holdingPotato
scoreboard players reset * pickupEye
scoreboard players reset * pickupFish
scoreboard players reset * pickupGlass
scoreboard players reset * pickupMutton
scoreboard players reset * pickupPie
scoreboard players reset * pickupPotato
scoreboard players reset * startRound
scoreboard players reset * teamSelected
scoreboard players reset * spectate

scoreboard players set Red combinedScores 0
scoreboard players set Blue combinedScores 0
scoreboard players set Banked scoreTotalBlue 0
scoreboard players set Banked scoreTotalRed 0

scoreboard players set Coal scoreTotalBlue 0
scoreboard players set Coal scoreTotalRed 0
scoreboard players set Diamond scoreTotalBlue 0
scoreboard players set Diamond scoreTotalRed 0
scoreboard players set Emerald scoreTotalBlue 0
scoreboard players set Emerald scoreTotalRed 0
scoreboard players set LapisLazuli scoreTotalBlue 0
scoreboard players set LapisLazuli scoreTotalRed 0
scoreboard players set Redstone scoreTotalBlue 0
scoreboard players set Redstone scoreTotalRed 0

# Clear main menu and barrier glass
fill 121 53 3201 134 52 3198 minecraft:air
fill 123 53 3195 132 52 3204 minecraft:air
fill 126 52 3203 129 54 3204 air
fill 129 53 3206 126 52 3193 minecraft:air

title @a times 5 35 20
title @a title {"translate":"mk.roundStart.title", "color":"green", "italic":"true"}
tellraw @a {"translate":"mk.header", "color":"dark_green", "with":[{"translate":"mk.header.roundStart"} ] }
tellraw @a {"translate":"mk.roundStart.info", "with":[{"translate":"mk.oreSamples.name"} ] }
tellraw @a {"translate":"mk.roundStart.info.tip", "color":"green"}

difficulty hard
effect @a clear

gamemode survival @a[tag=!lobby]
gamemode spectator @a[team=lobby]
scoreboard players tag @a[team=!lobby] add RefillItems
scoreboard players tag @e[type=villager_golem,name=James] add AbleToBank


scoreboard players tag @e[type=area_effect_cloud,name=Main] add RoundInProgress
scoreboard players tag @e[type=area_effect_cloud,name=Main] remove StartRound