scoreboard players tag @a[tag=!InBounds] add InBounds
execute @a ~ ~ ~ detect ~ 95 ~ minecraft:air 0 scoreboard players tag @a remove InBounds
execute @a ~ ~ ~ detect ~ ~ 3152 minecraft:air 0 scoreboard players tag @a remove InBounds
execute @a ~ ~ ~ detect 80 ~ ~ minecraft:air 0 scoreboard players tag @a remove InBounds

clear @a[tag=!InBounds]
tp @a[tag=!InBounds] 126 51 3201
scoreboard players tag @a[tag=!InBounds] add RefillItems

execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ gamemode adventure @a[tag=!InBounds]