# Tick timer down
scoreboard players remove CurrentInTicks gameTime 1
scoreboard players operation CurrentInSeconds gameTime = CurrentInTicks gameTime
scoreboard players operation CurrentInSeconds gameTime /= TWENTY CONST
scoreboard players operation EveryTwentyTick gameTime = CurrentInTicks gameTime
scoreboard players operation EveryTwentyTick gameTime %= TWENTY CONST
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test EveryTwentyTick gameTime 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players operation displayMinute gameTime = CurrentInSeconds gameTime
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players operation displayMinute gameTime /= SIXTY CONST
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players operation displaySecond gameTime = CurrentInSeconds gameTime
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players operation displaySecond gameTime %= SIXTY CONST

# Single-digit seconds timer actionbar display
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test CurrentInTicks gameTime 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test EveryTwentyTick gameTime 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test displaySecond gameTime 0 9
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ title @a actionbar {"translate":"%s:0%s","with":[{"score":{"name":"displayMinute", "objective":"gameTime"} },{"score":{"name":"displaySecond", "objective":"gameTime"} }]}

# Double-digit seconds timer actionbar display
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test CurrentInTicks gameTime 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test EveryTwentyTick gameTime 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test displaySecond gameTime 10
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ title @a actionbar {"translate":"%s:%s","with":[{"score":{"name":"displayMinute", "objective":"gameTime"} },{"score":{"name":"displaySecond", "objective":"gameTime"} } ]}

# Send message at 60 seconds left
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test CurrentInTicks gameTime 1200 1200
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ tellraw @a {"mk.roundEnd.info"}

# End game
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ scoreboard players test CurrentInTicks gameTime 0 0
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players tag @e[type=area_effect_cloud,name=Main,tag=RoundInProgress] add EndRound