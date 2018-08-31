clear @a[tag=!Registered]
effect clear @a[tag=!Registered]
effect give @a[tag=!Registered] minecraft:absorption 3 4 true
team join lobby @a[tag=!Registered]
experience add @a[tag=!Registered] -99999 points
experience add @a[tag=!Registered] -99999 levels

tellraw @a[tag=!Registered] {"translate":"mk.header", "color":"dark_green", "with":[{"translate":"mk.header.gameInfo"}] }
tellraw @a[tag=!Registered] {"translate":"mk.gameInfo.description", "with":[{"translate":"mk.oreSamples.name"}, {"translate":"key.use"} ] }

fill 126 51 3201 126 52 3201 minecraft:air
teleport @a[tag=!Registered] 126 51 3201
spawnpoint @a[tag=!Registered] 126 51 3201

# game in progress
execute if entity @e[type=area_effect_cloud,tag=Main,tag=RoundInProgress] run gamemode spectator @a[tag=!Registered]
scoreboard players add @a[tag=!Registered] pickupEye 0
scoreboard players add @a[tag=!Registered] pickupMutton 0
scoreboard players add @a[tag=!Registered] pickupFish 0
scoreboard players add @a[tag=!Registered] pickupPie 0
scoreboard players add @a[tag=!Registered] pickupPotato 0
scoreboard players add @a[tag=!Registered] pickupGlass 0

advancement grant @a[tag=!Registered] only monster_kids:tutorial/food/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/kits/elytra/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/kits/ender_pearl/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/kits/ladder/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/baked_potato/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/cooked_fish/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/cooked_mutton/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/digging_claw/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/pumpkin_pie/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/spider_eye/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/ores/time/visibility
advancement grant @a[tag=!Registered] only monster_kids:tutorial/james

# pre-game
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run gamemode adventure @a[tag=!Registered]
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players enable @a[tag=!Registered] teamSelected
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players enable @a[tag=!Registered] classSelected
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players enable @a[tag=!Registered] startRound
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players enable @a[tag=!Registered] spectate
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players set @a[tag=!Registered] teamSelected 0
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players set @a[tag=!Registered] classSelected 0
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players set @a[tag=!Registered] startRound 0
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run scoreboard players set @a[tag=!Registered] spectate 0

tag @a[tag=!Registered] add Registered