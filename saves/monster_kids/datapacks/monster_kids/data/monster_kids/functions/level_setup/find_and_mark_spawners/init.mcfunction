kill @e[tag=cursorFindSpawner]
summon minecraft:bat 81 94 3153 {CustomName:"{\"text\":\"cursorFindSpawner\"}",Tags:["cursorFindSpawner"], CustomNameVisible:1b, NoAI:1b, NoGravity:1b,Invulnerable:1b,Glowing:1b}

scoreboard objectives add moveX dummy
scoreboard objectives add moveY dummy
scoreboard objectives add moveZ dummy
scoreboard players set @e[type=minecraft:bat,tag=cursorFindSpawner] moveX 94
scoreboard players set @e[type=minecraft:bat,tag=cursorFindSpawner] moveY 94
scoreboard players set @e[type=minecraft:bat,tag=cursorFindSpawner] moveZ 94


#gamerule gameLoopFunction find_spawners:check_layer