tag @e[type=minecraft:item,tag=!Glowing] add MakeItemGlow {Item:{id:"minecraft:cooked_beef"},Age:600s}
data merge entity @e[type=minecraft:item,tag=MakeItemGlow] {Glowing:1b}
tag @e[type=minecraft:item,tag=MakeItemGlow] add Glowing
tag @e[type=minecraft:item,tag=Glowing] remove MakeItemGlow