# Purpose: Display players pick-up streak and total items held

# Combine scores
execute @a[score_pickupEye_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupEye
execute @a[score_pickupMutton_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupMutton
execute @a[score_pickupFish_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupFish
execute @a[score_pickupPie_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupPie
execute @a[score_pickupPotato_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupPotato
scoreboard players set @a pickupEye 0
scoreboard players set @a pickupMutton 0
scoreboard players set @a pickupFish 0
scoreboard players set @a pickupPie 0
scoreboard players set @a pickupPotato 0

# IF player picked up a new food item, reannounce current streak and holding
scoreboard players tag @a[score_pickupStreak_min=1] add ReannounceScore
execute @a[tag=ReannounceScore] ~ ~ ~ scoreboard players operation @s displayStreak += @s pickupStreak
scoreboard players set @a[tag=ReannounceScore] pickupStreak 0
scoreboard players set @a[tag=ReannounceScore] pickupTimer 60
title @a[tag=ReannounceScore] times 0 0 60
execute @a[tag=ReannounceScore] ~ ~ ~ title @s subtitle {"translate":"mk.streak","color":"aqua","with":[{"score":{"name":"@s","objective":"displayStreak"}},{"score":{"name":"@s","objective":"holdingTotal"}}]}
title @a[tag=ReannounceScore] title {"text":" "}
scoreboard players tag @a[tag=ReannounceScore] remove ReannounceScore

# Tickdown and reset
scoreboard players remove @a[score_pickupTimer_min=1] pickupTimer 1
scoreboard players set @a[score_pickupTimer=0] displayStreak 0