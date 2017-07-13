# Flag player to be added to team if not on team
scoreboard players tag @a[team=!blue,score_teamSelected_min=1,score_teamSelected=1] add JoinBlue
scoreboard players tag @a[team=!red,score_teamSelected_min=2,score_teamSelected=2] add JoinRed
scoreboard players tag @a[team=!green,score_teamSelected_min=3,score_teamSelected=3] add JoinGreen
scoreboard players tag @a[team=!yellow,score_teamSelected_min=4,score_teamSelected=4] add JoinYellow
# Remove player if already on that team
scoreboard players tag @a[team=blue,score_teamSelected_min=1,score_teamSelected=1] add LeaveTeam
scoreboard players tag @a[team=red,score_teamSelected_min=2,score_teamSelected=2] add LeaveTeam
scoreboard players tag @a[team=green,score_teamSelected_min=3,score_teamSelected=3] add LeaveTeam
scoreboard players tag @a[team=yellow,score_teamSelected_min=4,score_teamSelected=4] add LeaveTeam
scoreboard players set @a[score_teamSelected_min=1] teamSelected 0
scoreboard players enable @a teamSelected

scoreboard teams join blue @a[tag=JoinBlue]
scoreboard teams join red @a[tag=JoinRed]
scoreboard teams join green @a[tag=JoinGreen]
scoreboard teams join yellow @a[tag=JoinYellow]
scoreboard teams join lobby @a[tag=LeaveTeam]
execute @a[tag=JoinBlue] ~ ~ ~ tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinBlue]", "color":"blue" }, {"translate":"mk.team.blue", "color":"blue"} ] }
execute @a[tag=JoinRed] ~ ~ ~ tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinRed]", "color":"red" }, {"translate":"mk.team.red", "color":"red"} ] }
execute @a[tag=JoinGreen] ~ ~ ~ tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinGreen]", "color":"green" }, {"translate":"mk.team.green", "color":"green"} ] }
execute @a[tag=JoinYellow] ~ ~ ~ tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinYellow]", "color":"yellow" }, {"translate":"mk.team.yellow", "color":"yellow"} ] }
execute @a[tag=LeaveTeam] ~ ~ ~ tellraw @a {"translate":"mk.team.leave", "with":[{"selector":"@a[tag=LeaveTeam]" } ] }

scoreboard players tag @a[tag=JoinBlue] remove JoinBlue
scoreboard players tag @a[tag=JoinRed] remove JoinRed
scoreboard players tag @a[tag=JoinGreen] remove JoinGreen
scoreboard players tag @a[tag=JoinYellow] remove JoinYellow
# Remove player if already on that team
scoreboard players tag @a[tag=LeaveTeam] remove LeaveTeam

