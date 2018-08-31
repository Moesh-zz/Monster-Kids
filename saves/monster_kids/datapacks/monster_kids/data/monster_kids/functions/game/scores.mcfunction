# FindCarriedSamples
scoreboard players set @a holdingTotal 0
execute as @a store result score @s AffectedItems run clear @s minecraft:cooked_beef 0
execute as @a run scoreboard players operation @s holdingTotal = @s AffectedItems

# CombineTeamScores
scoreboard players set Holding scoreTotalBlue 0
scoreboard players set Holding scoreTotalRed 0
scoreboard players set Banked scoreTotalBlue 0
scoreboard players set Banked scoreTotalRed 0

scoreboard players operation Holding scoreTotalBlue += @a[team=blue,scores={health=1..}] holdingTotal
scoreboard players operation Holding scoreTotalRed += @a[team=red,scores={health=1..}] holdingTotal
scoreboard players operation Banked scoreTotalBlue += @a[team=blue] bankedTotal
scoreboard players operation Banked scoreTotalRed += @a[team=red] bankedTotal

# Combine all the scores
# blue team
scoreboard players operation Blue combinedScores = Holding scoreTotalBlue
scoreboard players operation Blue combinedScores += Banked scoreTotalBlue
# red team
scoreboard players operation Red combinedScores = Holding scoreTotalRed
scoreboard players operation Red combinedScores += Banked scoreTotalRed

# Bounce scores to display scoreboard
scoreboard players operation Blue displayScores = Blue combinedScores
scoreboard players operation Red displayScores = Red combinedScores