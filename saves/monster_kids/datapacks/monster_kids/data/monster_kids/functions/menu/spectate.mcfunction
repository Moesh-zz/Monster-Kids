tag @a[scores={spectate=1..}] add ChangeGamemodeToSpectator
gamemode spectator @a[tag=ChangeGamemodeToSpectator]
tellraw @a[tag=ChangeGamemodeToSpectator] {"translate":"mk.spectate","italic":"true","color":"gray"}

tag @a[tag=ChangeGamemodeToSpectator,team=!lobby] add LeaveTeam
execute as @a[tag=ChangeGamemodeToSpectator,limit=1] at @s run function monster_kids:menu/class_selected

scoreboard players set @a[tag=ChangeGamemodeToSpectator] spectate 0
scoreboard players enable @a[tag=ChangeGamemodeToSpectator] spectate
scoreboard players tag @a[tag=ChangeGamemodeToSpectator] remove ChangeGamemodeToSpectator

