execute as @e[type=minecraft:bat,tag=cursorFindSpawner] at @s run teleport @s ~1 ~ ~
execute as @e[type=minecraft:bat,tag=cursorFindSpawner] at @s if block ~ ~ ~ minecraft:spawner run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"SpawnerMarker\"}",:["SpawnerMrker"], CustomNameVisible:1b, Duration:2147483647}
execute as @e[type=minecraft:bat,tag=cursorFindSpawner] at @s if block ~ ~ ~ minecraft:spawner run say Found and marked spawner!
scoreboard players remove @e[type=minecraft:bat,tag=cursorFindSpawner] moveX 1
execute as @e[type=minecraft:bat,tag=cursorFindSpawner,scores={moveX=..0}] at @s run tp @s ~-94 ~ ~