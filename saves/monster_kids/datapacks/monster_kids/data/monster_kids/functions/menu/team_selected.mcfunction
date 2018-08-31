# Flag player to be added to team if not on team
tag @a[team=!blue,scores={teamSelected=1}] add JoinBlue
tag @a[team=!red,scores={teamSelected=2}] add JoinRed
# Remove player if already on that team
tag @a[team=blue,scores={teamSelected=1}] add LeaveTeam
tag @a[team=red,scores={teamSelected=2}] add LeaveTeam
scoreboard players set @a[scores={teamSelected=1..}] teamSelected 0
scoreboard players enable @a teamSelected

team join blue @a[tag=JoinBlue]
team join red @a[tag=JoinRed]
team join lobby @a[tag=LeaveTeam]
execute as @a[tag=JoinBlue] run tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinBlue]", "color":"blue" }, {"translate":"mk.team.blue", "color":"blue"} ] }
execute as @a[tag=JoinRed] run tellraw @a {"translate":"mk.team.join", "with":[{"selector":"@a[tag=JoinRed]", "color":"red" }, {"translate":"mk.team.red", "color":"red"} ] }
execute as @a[tag=LeaveTeam] run tellraw @a {"translate":"mk.team.leave", "with":[{"selector":"@a[tag=LeaveTeam]" } ] }

tag @a[tag=JoinBlue] remove JoinBlue
tag @a[tag=JoinRed] remove JoinRed
# Remove player if already on that team
tag @a[tag=LeaveTeam] remove LeaveTeam

