# Compare scores
scoreboard players operation TestBlue combinedScores = Blue combinedScores
scoreboard players operation TestRed combinedScores = Red combinedScores
scoreboard players set CompareScore combinedScores 0
scoreboard players operation CompareScore combinedScores > TestBlue combinedScores
scoreboard players operation CompareScore combinedScores > TestRed combinedScores
scoreboard players operation TestBlue combinedScores -= CompareScore combinedScores
scoreboard players operation TestRed combinedScores -= CompareScore combinedScores

# Detect who won
execute if score TestBlue combinedScores matches 0 run tag @e[type=minecraft:area_effect_cloud,tag=Main] add BlueWon
execute if score TestRed combinedScores matches 0 run tag @e[type=minecraft:area_effect_cloud,tag=Main] add RedWon

# Was there a tie?
scoreboard players operation TestDraw combinedScores = Blue combinedScores
scoreboard players operation TestDraw combinedScores -= Red combinedScores
execute if score TestDraw combinedScores matches 0 run tag @e[type=minecraft:area_effect_cloud,tag=Main] add Draw
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=Draw] remove RedWon
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=Draw] remove BlueWon

# Announce result
title @a actionbar {"translate":"mk.roundEnd.title"}
tellraw @a {"translate":"mk.header", "color":"dark_green", "with":[{"translate":"mk.header.roundEnd"} ] }
execute as @e[type=minecraft:area_effect_cloud,tag=Main,tag=BlueWon] run tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=blue]", "color":"blue"}, {"translate":"mk.oreSamples.name"} ] }
execute as @e[type=minecraft:area_effect_cloud,tag=Main,tag=RedWon] run tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=red]", "color":"red"}, {"translate":"mk.oreSamples.name"} ] }
execute as @e[type=minecraft:area_effect_cloud,tag=Main,tag=Draw] run tellraw @a {"translate":"mk.roundEnd.tie"}

# Reset
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=RedWon] remove RedWon
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=BlueWon] remove BlueWon
tag @e[type=minecraft:area_effect_cloud,tag=Main,tag=Draw] remove Draw
