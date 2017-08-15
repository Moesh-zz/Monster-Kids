scoreboard players tag @a[score_spectate_min=1] add ChangeGamemodeToSpectator
gamemode spectator @a[tag=ChangeGamemodeToSpectator]
tellraw @a[tag=ChangeGamemodeToSpectator] {"translate":"mk.spectate","italic":"true","color":"gray"}

scoreboard players tag @a[tag=ChangeGamemodeToSpectator,team=!lobby] add LeaveTeam
execute @a[tag=ChangeGamemodeToSpectator,c=1] ~ ~ ~ function monster_kids:menu/class_selected

scoreboard players set @a[tag=ChangeGamemodeToSpectator] spectate 0
scoreboard players enable @a[tag=ChangeGamemodeToSpectator] spectate
scoreboard players tag @a[tag=ChangeGamemodeToSpectator] remove ChangeGamemodeToSpectator

