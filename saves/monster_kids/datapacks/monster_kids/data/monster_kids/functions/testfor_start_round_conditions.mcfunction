# A player has attemtped to start a round, do all the players meet the conditions?
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=!RoundInProgress] add StartRound

# Has a player joined a team?
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=StartRound] add NoPlayersAvailable
execute if entity @a[team=blue,limit=1] run tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=StartRound] remove NoPlayersAvailable
execute if entity @a[team=red,limit=1] run tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=StartRound] remove NoPlayersAvailable
execute if entity @s[tag=NoPlayersAvailable] run tag @e[type=minecraft:area_effect_cloud,tag=Main] remove StartRound
execute if entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=!StartRound] run tellraw @a {"translate":"mk.error.gameStartAborted","color":"red","with":[{"translate":"mk.error.gameStart.noPlayers"}]}

# Have all players selected a class?
execute if entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=StartRound] run tag @a add NoClassSelected
execute if entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=NoPlayersAvailable] run tag @a remove NoClassSelected
tag @a[tag=ClassElytra] remove NoClassSelected
tag @a[tag=ClassLadder] remove NoClassSelected
tag @a[tag=ClassPearl] remove NoClassSelected
tag @a[gamemode=adventure] remove NoClassSelected
tag @a[team=lobby] remove NoClassSelected
execute if entity @a[tag=NoClassSelected] run tag @e[type=minecraft:area_effect_cloud,tag=Main] remove StartRound
execute if entity @a[tag=NoClassSelected] run tellraw @a {"translate":"mk.error.gameStartAborted","color":"red","with":[{"translate":"mk.error.gameStart.missingItems","with":[{"selector":"@a[tag=NoClassSelected]"}]}]}
tag @a remove NoClassSelected

scoreboard players enable @a startRound
scoreboard players set @a startRound 0