# Reset 
scoreboard players reset * Food
scoreboard players reset * Score
scoreboard players reset * combinedScores

# Query held food
execute @a ~ ~ ~ clear @p minecraft:cooked_beef 0 0
execute @a ~ ~ ~ scoreboard players operation @p Food = @p AffectedItems

# Compile all points into Score scoreboard
execute @a[team=blue,score_health_min=1] ~ ~ ~ scoreboard players operation HoldingBlue Score += @s Food
execute @a[team=red,score_health_min=1] ~ ~ ~ scoreboard players operation HoldingRed Score += @s Food
execute @a ~ ~ ~ scoreboard players reset @s Score
execute @a ~ ~ ~ scoreboard players operation @s Score = @s Food
execute @a ~ ~ ~ scoreboard players operation @s Score += @s bankedTotal
scoreboard players operation BankedBlue Score += @a[team=blue] bankedTotal
scoreboard players operation BankedRed Score += @a[team=red] bankedTotal

# Combine all the scores
scoreboard players operation Blue combinedScores = HoldingBlue Score
scoreboard players operation Blue combinedScores += BankedBlue Score
scoreboard players operation Red combinedScores = HoldingRed Score
scoreboard players operation Red combinedScores += BankedRed Score

# Bounce scores to display scoreboard
scoreboard players operation Blue displayScores = Blue combinedScores
scoreboard players operation Red displayScores = Red combinedScores