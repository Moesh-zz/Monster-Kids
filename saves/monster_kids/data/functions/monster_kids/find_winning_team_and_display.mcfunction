scoreboard players operation TestBlue combinedScores = Blue combinedScores
scoreboard players operation TestRed combinedScores = Red combinedScores
scoreboard players operation TestGreen combinedScores = Green combinedScores
scoreboard players operation TestYellow combinedScores = Yellow combinedScores

scoreboard players set CompareScore combinedScores 0
scoreboard players operation CompareScore combinedScores > TestBlue combinedScores
scoreboard players operation CompareScore combinedScores > TestRed combinedScores
scoreboard players operation CompareScore combinedScores > TestGreen combinedScores
scoreboard players operation CompareScore combinedScores > TestYellow combinedScores

scoreboard players operation TestBlue combinedScores -= CompareScore combinedScores
scoreboard players operation TestRed combinedScores -= CompareScore combinedScores
scoreboard players operation TestGreen combinedScores -= CompareScore combinedScores
scoreboard players operation TestYellow combinedScores -= CompareScore combinedScores

title @a actionbar {"translate":"mk.roundEnd.title"}
tellraw @a {"translate":"mk.header", "color":"dark_green", "with":[{"translate":"mk.header.roundEnd"} ] }

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestBlue combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=blue]", "color":"blue"}, {"translate":"mk.oreSamples.name"} ] }

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestRed combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=red]", "color":"red"}, {"translate":"mk.oreSamples.name"} ] }

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestGreen combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=green]", "color":"green"}, {"translate":"mk.oreSamples.name"} ] }

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test TestYellow combinedScores 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ tellraw @a {"translate":"mk.roundEnd.info", "with":[{"selector":"@a[team=yellow]", "color":"yellow"}, {"translate":"mk.oreSamples.name"} ] }