# Check for bedrock padding on all sides
tag @a[tag=!InBounds] add InBounds
execute as @a at @s if block ~ 95 ~ minecraft:air run tag @s remove InBounds
execute as @a at @s if block ~ ~ 3152 minecraft:air run tag @s remove InBounds
execute as @a at @s if block 80 ~ ~ minecraft:air run tag @s remove InBounds

# If player is not in bounds, teleport them back
# Clear items if they are in survival mode
clear @a[tag=!InBounds,gamemode=survival]
teleport @a[tag=!InBounds] 126 51 3201
tag @a[tag=!InBounds] add RefillItems
execute if entity @e[type=area_effect_cloud,tag=Main,tag=!RoundInProgress] run gamemode adventure @a[tag=!InBounds]