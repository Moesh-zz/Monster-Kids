# FindCarriedSamples
scoreboard players set @a holdingTotal 0
execute @a ~ ~ ~ clear @p minecraft:cooked_beef 0 0
execute @a ~ ~ ~ scoreboard players operation @p holdingTotal = @p AffectedItems

# CombineTeamScores
scoreboard players set Holding scoreTotalBlue 0
scoreboard players set Holding scoreTotalRed 0
scoreboard players set Banked scoreTotalBlue 0
scoreboard players set Banked scoreTotalRed 0

execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation Holding scoreTotalBlue += @p holdingTotal
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation Holding scoreTotalRed += @p holdingTotal

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