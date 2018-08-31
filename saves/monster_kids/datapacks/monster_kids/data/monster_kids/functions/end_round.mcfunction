tag @e[type=area_effect_cloud,tag=Main] remove RoundInProgress
function monster_kids:game/find_winning_team_and_display
function monster_kids:level_setup/reset_moeshmk1

scoreboard players set @a classSelected 0
scoreboard players set @a startRound 0
scoreboard players set @a teamSelected 0
scoreboard players set @a spectate
scoreboard players enable @a classSelected
scoreboard players enable @a startRound
scoreboard players enable @a teamSelected
scoreboard players enable @a spectate
tag @a remove Playing
tag @a remove Spectating
tag @a[tag=ClassElytra] remove ClassElytra
tag @a[tag=ClassLadder] remove ClassLadder
tag @a[tag=ClassPearl] remove ClassPearl
team join lobby @a

difficulty peaceful
gamemode adventure @a
clear @a
experience add @a -999999 @a points
experience add @a -999999 @a levels
effect clear @a
tag @a add RefillItems
tag @e[type=minecraft:iron_golem,tag=James] remove AbleToBank
teleport @a 126 51 3201 -135 0

tag @e[type=minecraft:area_effect_cloud,tag=Main] remove EndRound