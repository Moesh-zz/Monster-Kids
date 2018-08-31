execute as @e[type=minecraft:bat,tag=cursorFindSpawner] at @s teleport @s ~ ~ ~1
scoreboard players remove @e[type=minecraft:bat,tag=cursorFindSpawner] moveZ 1
scoreboard players set @e[type=minecraft:bat,tag=cursorFindSpawner,scores={moveX=..0}] moveX 94
execute as @e[type=minecraft:bat,tag=cursorFindSpawner,scores={moveZ=..0}] at @s tp @s ~ ~ ~-94
