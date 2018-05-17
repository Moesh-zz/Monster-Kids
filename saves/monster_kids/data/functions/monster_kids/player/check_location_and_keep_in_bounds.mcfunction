# Check for bedrock padding on all sides
scoreboard players tag @a[tag=!InBounds] add InBounds
execute @a ~ ~ ~ detect ~ 95 ~ minecraft:air 0 scoreboard players tag @s remove InBounds
execute @a ~ ~ ~ detect ~ ~ 3152 minecraft:air 0 scoreboard players tag @s remove InBounds
execute @a ~ ~ ~ detect 80 ~ ~ minecraft:air 0 scoreboard players tag @s remove InBounds

# If player is not in bounds, teleport them back
# Clear items if they are in survival mode
clear @a[tag=!InBounds,m=0]
tp @a[tag=!InBounds] 126 51 3201
scoreboard players tag @a[tag=!InBounds] add RefillItems
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ gamemode adventure @a[tag=!InBounds]