execute as @e[type=minecraft:bat,tag=cursorFindSpawner] at @s run teleport @s ~ ~-1 ~
scoreboard players remove @e[type=minecraft:bat,tag=cursorFindSpawner] moveY 1
scoreboard players set @e[type=minecraft:bat,tag=cursorFindSpawner,scores={moveY=1..,moveX=..0}] moveX 94
scoreboard players set @e[type=minecraft:bat,tag=cursorFindSpawner,scores={moveY=1..,moveZ=..0}] moveZ 94