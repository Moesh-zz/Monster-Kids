clear @a[tag=!Registered]
effect @a[tag=!Registered] clear
effect @a[tag=!Registered] minecraft:absorption 3 4 true
stats entity @a[tag=!Registered] set AffectedItems @p[c=1] AffectedItems
scoreboard players add @a[tag=!Registered] AffectedItems 0
scoreboard teams join lobby @a[tag=!Registered]
xp -99999 @a[tag=!Registered]
xp -99999L @a[tag=!Registered]

tellraw @a[tag=!Registered] {"translate":"mk.header", "color":"dark_green", "with":[{"translate":"mk.header.gameInfo"}] }
tellraw @a[tag=!Registered] {"translate":"mk.gameInfo.description", "with":[{"translate":"mk.oreSamples.name"}, {"translate":"key.use"} ] }

fill 126 51 3201 126 52 3201 minecraft:air
tp @a[tag=!Registered] 126 51 3201
spawnpoint @a[tag=!Registered] 126 51 3201

# game in progress
execute @e[type=area_effect_cloud,name=Main,tag=RoundInProgress] ~ ~ ~ gamemode spectator @a[tag=!Registered]
scoreboard players add @a[tag=!Registered] pickupEye 0
scoreboard players add @a[tag=!Registered] pickupMutton 0
scoreboard players add @a[tag=!Registered] pickupFish 0
scoreboard players add @a[tag=!Registered] pickupPie 0
scoreboard players add @a[tag=!Registered] pickupPotato 0
scoreboard players add @a[tag=!Registered] pickupGlass 0

advancement grant @s only monster_kids:tutorial/food/visibility
advancement grant @s only monster_kids:tutorial/kits/elytra/visibility
advancement grant @s only monster_kids:tutorial/kits/ender_pearl/visibility
advancement grant @s only monster_kids:tutorial/kits/ladder/visibility
advancement grant @s only monster_kids:tutorial/ores/baked_potato/visibility
advancement grant @s only monster_kids:tutorial/ores/cooked_fish/visibility
advancement grant @s only monster_kids:tutorial/ores/cooked_mutton/visibility
advancement grant @s only monster_kids:tutorial/ores/digging_claw/visibility
advancement grant @s only monster_kids:tutorial/ores/pumpkin_pie/visibility
advancement grant @s only monster_kids:tutorial/ores/spider_eye/visibility

# pre-game
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ gamemode adventure @a[tag=!Registered]
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players enable @a[tag=!Registered] teamSelected
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players enable @a[tag=!Registered] classSelected
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players enable @a[tag=!Registered] startRound
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players set @a[tag=!Registered] teamSelected 0
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players set @a[tag=!Registered] classSelected 0
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players set @a[tag=!Registered] startRound 0

execute @a[tag=!Registered] ~ ~ ~ scoreboard players tag @s add Registered