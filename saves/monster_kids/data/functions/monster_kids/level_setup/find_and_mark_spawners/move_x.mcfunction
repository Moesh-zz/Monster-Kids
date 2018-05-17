tp @e[type=bat,name=cursorFindSpawner] ~1 ~ ~
execute @e[type=bat,name=cursorFindSpawner] ~ ~ ~ detect ~ ~ ~ minecraft:mob_spawner -1 summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:SpawnerMarker, CustomNameVisible:1b, Duration:2147483647}
execute @e[type=bat,name=cursorFindSpawner] ~ ~ ~ detect ~ ~ ~ minecraft:mob_spawner -1 say Found and marked spawner!
scoreboard players remove @e[type=bat,name=cursorFindSpawner] moveX 1
execute @e[type=bat,name=cursorFindSpawner,score_moveX=0] ~ ~ ~ tp @s ~-94 ~ ~