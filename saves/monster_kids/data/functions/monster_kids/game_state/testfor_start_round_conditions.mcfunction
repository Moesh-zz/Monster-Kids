# A player has attemtped to start a round, do all the players meet the conditions?
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] add StartRound

# Has a player joined a team?
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=StartRound] add NoPlayersAvailable
execute @a[team=blue,c=1] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=StartRound] remove NoPlayersAvailable
execute @a[team=red,c=1] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=StartRound] remove NoPlayersAvailable
execute @a[team=green,c=1] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=StartRound] remove NoPlayersAvailable
execute @a[team=yellow,c=1] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=StartRound] remove NoPlayersAvailable

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @s[tag=NoPlayersAvailable]
scoreboard players tag @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] remove StartRound
execute @e[type=area_effect_cloud,name=Main,tag=!StartRound] ~ ~ ~ tellraw @a {"translate":"mk.error.gameStartAborted","color":"red","with":[{"translate":"mk.error.gameStart.noPlayers"}]}

# Have all players selected a class?
execute @e[type=area_effect_cloud,name=Main,tag=StartRound] ~ ~ ~ scoreboard players tag @a add NoClassSelected
execute @e[type=area_effect_cloud,name=Main,tag=NoPlayersAvailable] ~ ~ ~ scoreboard players tag @a remove NoClassSelected
scoreboard players tag @a[tag=ClassElytra] remove NoClassSelected
scoreboard players tag @a[tag=ClassLadder] remove NoClassSelected
scoreboard players tag @a[tag=ClassPearl] remove NoClassSelected
execute @e[type=area_effect_cloud,name=Main,tag=StartRound] ~ ~ ~ testfor @a[tag=NoClassSelected]
scoreboard players tag @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] remove StartRound
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ tellraw @a {"translate":"mk.error.gameStartAborted","color":"red","with":[{"translate":"mk.error.gameStart.missingItems","with":[{"selector":"@a[tag=NoClassSelected]"}]}]}
scoreboard players tag @a remove NoClassSelected

scoreboard players enable @a startRound
scoreboard players set @a startRound 0