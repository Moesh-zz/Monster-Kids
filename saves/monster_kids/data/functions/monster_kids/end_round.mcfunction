scoreboard players tag @e[type=area_effect_cloud,name=Main] remove RoundInProgress
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
scoreboard players tag @a remove Playing
scoreboard players tag @a remove Spectating
scoreboard players tag @a[tag=ClassElytra] remove ClassElytra
scoreboard players tag @a[tag=ClassLadder] remove ClassLadder
scoreboard players tag @a[tag=ClassPearl] remove ClassPearl
scoreboard teams join lobby @a

difficulty peaceful
gamemode adventure @a
clear @a
xp -999999 @a
xp -999999L @a
effect @a clear
scoreboard players tag @a add RefillItems
scoreboard players tag @e[type=villager_golem,name=James] remove AbleToBank
tp @a 126 51 3201 -135 0

scoreboard players tag @e[type=area_effect_cloud,name=Main] remove EndRound