title @a actionbar {"translate":"mk.roundEnd.title"}
tellraw @a {"translate":"mk.header", "color":"dark_green", "with":[{"translate":"mk.header.roundEnd"} ] }

# Did blue win?
scoreboard players set CompareScore combinedScores 0
scoreboard players operation TestBlue combinedScores = Blue combinedScores
scoreboard players operation CompareScore combinedScores > TestBlue combinedScores
scoreboard players operation TestBlue combinedScores -= CompareScore combinedScores
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestBlue combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players tag @s add BlueWon

# Did red win?
scoreboard players set CompareScore combinedScores 0
scoreboard players operation TestRed combinedScores = Red combinedScores
scoreboard players operation CompareScore combinedScores > TestRed combinedScores
scoreboard players operation TestRed combinedScores -= CompareScore combinedScores
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestRed combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players tag @s add RedWon

# Was there a tie?
scoreboard players operation TestDraw combinedScores = Blue combinedScores
scoreboard players operation TestDraw combinedScores -= Red combinedScores
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestDraw combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players tag @s add Draw
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=Draw] remove RedWon
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=Draw] remove BlueWon

# Announce result
execute @e[type=area_effect_cloud,name=Main,tag=BlueWon] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=blue]", "color":"blue"}, {"translate":"mk.oreSamples.name"} ] }
execute @e[type=area_effect_cloud,name=Main,tag=RedWon] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=red]", "color":"red"}, {"translate":"mk.oreSamples.name"} ] }
execute @e[type=area_effect_cloud,name=Main,tag=Draw] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.tie"}

scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=RedWon] remove RedWon
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=BlueWon] remove BlueWon
scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=Draw] remove Draw
