# Flag player to be added to team if not on team
scoreboard players tag @a[team=!blue,score_teamSelected_min=1,score_teamSelected=1] add JoinBlue
scoreboard players tag @a[team=!red,score_teamSelected_min=2,score_teamSelected=2] add JoinRed
# Remove player if already on that team
scoreboard players tag @a[team=blue,score_teamSelected_min=1,score_teamSelected=1] add LeaveTeam
scoreboard players tag @a[team=red,score_teamSelected_min=2,score_teamSelected=2] add LeaveTeam
scoreboard players set @a[score_teamSelected_min=1] teamSelected 0
scoreboard players enable @a teamSelected

scoreboard teams join blue @a[tag=JoinBlue]
scoreboard teams join red @a[tag=JoinRed]
scoreboard teams join lobby @a[tag=LeaveTeam]
execute @a[tag=JoinBlue] ~ ~ ~ tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinBlue]", "color":"blue" }, {"translate":"mk.team.blue", "color":"blue"} ] }
execute @a[tag=JoinRed] ~ ~ ~ tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinRed]", "color":"red" }, {"translate":"mk.team.red", "color":"red"} ] }
execute @a[tag=LeaveTeam] ~ ~ ~ tellraw @a {"translate":"mk.team.leave", "with":[{"selector":"@a[tag=LeaveTeam]" } ] }

scoreboard players tag @a[tag=JoinBlue] remove JoinBlue
scoreboard players tag @a[tag=JoinRed] remove JoinRed
# Remove player if already on that team
scoreboard players tag @a[tag=LeaveTeam] remove LeaveTeam

