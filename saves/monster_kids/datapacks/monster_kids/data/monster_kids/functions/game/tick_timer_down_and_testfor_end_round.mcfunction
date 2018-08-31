# Tick timer down
scoreboard players remove CurrentInTicks gameTime 1
scoreboard players operation CurrentInSeconds gameTime = CurrentInTicks gameTime
scoreboard players operation CurrentInSeconds gameTime /= TWENTY CONST
scoreboard players operation EveryTwentyTick gameTime = CurrentInTicks gameTime
scoreboard players operation EveryTwentyTick gameTime %= TWENTY CONST
execute if score EveryTwentyTick gameTime matches 0 run scoreboard players operation displayMinute gameTime = CurrentInSeconds gameTime
execute if score EveryTwentyTick gameTime matches 0 run scoreboard players operation displayMinute gameTime /= SIXTY CONST
execute if score EveryTwentyTick gameTime matches 0 run scoreboard players operation displaySecond gameTime = CurrentInSeconds gameTime
execute if score EveryTwentyTick gameTime matches 0 run scoreboard players operation displaySecond gameTime %= SIXTY CONST

# Single-digit seconds timer actionbar display
execute if score CurrentInTicks gameTime matches 0.. if score EveryTwentyTick gameTime matches 0 run scoreboard players test displaySecond gameTime 0 9
execute if score CurrentInTicks gameTime matches 0.. if score EveryTwentyTick gameTime matches 0 run title @a actionbar {"translate":"%s:0%s","with":[{"score":{"name":"displayMinute", "objective":"gameTime"} },{"score":{"name":"displaySecond", "objective":"gameTime"} }]}

# Double-digit seconds timer actionbar display
execute if score CurrentInTicks gameTime matches 0.. if score EveryTwentyTick gameTime matches 0 if score displaySecond gameTime matches 10.. run title @a actionbar {"translate":"%s:%s","with":[{"score":{"name":"displayMinute", "objective":"gameTime"} },{"score":{"name":"displaySecond", "objective":"gameTime"} } ]}

# Send message at 60 seconds left
execute if score CurrentInTicks gameTime matches 1200 run tellraw @a {"translate":"mk.roundEnd.countdown","color":"green","with":[{"score":{"name":"CurrentInSeconds","objective":"gameTime"},"color":"white"}]}

# Send message at 30 seconds left
execute if score CurrentInTicks gameTime matches 600 run tellraw @a {"translate":"mk.roundEnd.countdown","color":"green","with":[{"score":{"name":"CurrentInSeconds","objective":"gameTime"},"color":"white"}]}

# Send message at 10 seconds left
execute if score CurrentInTicks gameTime matches 200 run tellraw @a {"translate":"mk.roundEnd.countdown","color":"green","with":[{"score":{"name":"CurrentInSeconds","objective":"gameTime"},"color":"white"}]}

# End game
execute if score CurrentInTicks gameTime matches 0 run tag @e[type=area_effect_cloud,tag=Main,tag=RoundInProgress] add EndRound