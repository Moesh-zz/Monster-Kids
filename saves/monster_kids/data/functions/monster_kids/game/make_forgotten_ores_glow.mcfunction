scoreboard players tag @e[type=item,tag=!Glowing] add MakeItemGlow {Item:{id:"minecraft:cooked_beef"},Age:600s}
entitydata @e[type=item,tag=MakeItemGlow] {Glowing:1b}
scoreboard players tag @e[type=item,tag=MakeItemGlow] add Glowing
scoreboard players tag @e[type=item,tag=Glowing] remove MakeItemGlow