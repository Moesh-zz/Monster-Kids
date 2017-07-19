# FindCarriedSamples
scoreboard players set @a holdingEye 0
scoreboard players set @a holdingMutton 0
scoreboard players set @a holdingFish 0
scoreboard players set @a holdingPie 0
scoreboard players set @a holdingPotato 0
execute @a ~ ~ ~ clear @p minecraft:spider_eye 0 0
execute @a ~ ~ ~ scoreboard players operation @p holdingEye = @p AffectedItems
execute @a ~ ~ ~ clear @p minecraft:cooked_mutton 0 0
execute @a ~ ~ ~ scoreboard players operation @p holdingMutton = @p AffectedItems
execute @a ~ ~ ~ clear @p minecraft:cooked_fish 1 0
execute @a ~ ~ ~ scoreboard players operation @p holdingFish = @p AffectedItems
execute @a ~ ~ ~ clear @p minecraft:pumpkin_pie 0 0
execute @a ~ ~ ~ scoreboard players operation @p holdingPie = @p AffectedItems
execute @a ~ ~ ~ clear @p minecraft:baked_potato 0 0
execute @a ~ ~ ~ scoreboard players operation @p holdingPotato = @p AffectedItems

execute @a ~ ~ ~ scoreboard players operation @s holdingTotal = @s holdingEye
execute @a ~ ~ ~ scoreboard players operation @s holdingTotal += @s holdingMutton
execute @a ~ ~ ~ scoreboard players operation @s holdingTotal += @s holdingFish
execute @a ~ ~ ~ scoreboard players operation @s holdingTotal += @s holdingPie
execute @a ~ ~ ~ scoreboard players operation @s holdingTotal += @s holdingPotato

# CombineTeamScores
scoreboard players set Coal scoreTotalBlue 0
scoreboard players set Coal scoreTotalRed 0
scoreboard players set Redstone scoreTotalBlue 0
scoreboard players set Redstone scoreTotalRed 0
scoreboard players set LapisLazuli scoreTotalBlue 0
scoreboard players set LapisLazuli scoreTotalRed 0
scoreboard players set Diamond scoreTotalBlue 0
scoreboard players set Diamond scoreTotalRed 0
scoreboard players set Emerald scoreTotalBlue 0
scoreboard players set Emerald scoreTotalRed 0
scoreboard players set Banked scoreTotalBlue 0
scoreboard players set Banked scoreTotalRed 0

execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation Coal scoreTotalBlue += @p holdingEye
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation Coal scoreTotalRed += @p holdingEye

execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation Redstone scoreTotalBlue += @p holdingMutton
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation Redstone scoreTotalRed += @p holdingMutton

execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation LapisLazuli scoreTotalBlue += @p holdingFish
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation LapisLazuli scoreTotalRed += @p holdingFish

execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation Diamond scoreTotalBlue += @p holdingPie
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation Diamond scoreTotalRed += @p holdingPie

execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation Emerald scoreTotalBlue += @p holdingPotato
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation Emerald scoreTotalRed += @p holdingPotato

scoreboard players operation Banked scoreTotalBlue += @a[team=blue] bankedTotal
scoreboard players operation Banked scoreTotalRed += @a[team=red] bankedTotal

# Combine all the scores
# blue team
scoreboard players operation Blue combinedScores = Coal scoreTotalBlue
scoreboard players operation Blue combinedScores += Redstone scoreTotalBlue
scoreboard players operation Blue combinedScores += LapisLazuli scoreTotalBlue
scoreboard players operation Blue combinedScores += Diamond scoreTotalBlue
scoreboard players operation Blue combinedScores += Emerald scoreTotalBlue
scoreboard players operation Blue combinedScores += Banked scoreTotalBlue
# red team
scoreboard players operation Red combinedScores = Coal scoreTotalRed
scoreboard players operation Red combinedScores += Redstone scoreTotalRed
scoreboard players operation Red combinedScores += LapisLazuli scoreTotalRed
scoreboard players operation Red combinedScores += Diamond scoreTotalRed
scoreboard players operation Red combinedScores += Emerald scoreTotalRed
scoreboard players operation Red combinedScores += Banked scoreTotalRed

# Bounce scores to display scoreboard
scoreboard players operation Blue displayScores = Blue combinedScores
scoreboard players operation Red displayScores = Red combinedScores