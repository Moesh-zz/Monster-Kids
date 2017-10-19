kill @e[name=cursorFindSpawner]
summon minecraft:bat 81 94 3153 {CustomName:cursorFindSpawner, CustomNameVisible:1b, NoAI:1, NoGravity:1,Invulnerable:1,Glowing:1}

scoreboard objectives add moveX dummy
scoreboard objectives add moveY dummy
scoreboard objectives add moveZ dummy
scoreboard players set @e[type=bat,name=cursorFindSpawner] moveX 94
scoreboard players set @e[type=bat,name=cursorFindSpawner] moveY 94
scoreboard players set @e[type=bat,name=cursorFindSpawner] moveZ 94


gamerule gameLoopFunction find_spawners:check_layer
