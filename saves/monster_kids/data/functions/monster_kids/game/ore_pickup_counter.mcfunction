# Purpose: Display players pick-up streak and total items held

# Combine scores on @s in pickupStreak
execute @a[score_pickupFood_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupFood
scoreboard players tag @a[score_pickupStreak_min=1] add ReannounceScore
scoreboard players set @a[tag=ReannounceScore] pickupFood 0
execute @a[tag=ReannounceScore] ~ ~ ~ scoreboard players operation @s displayStreak += @s pickupStreak
scoreboard players set @a[tag=ReannounceScore] pickupStreak 0

# If player picked up item, stop them from glowing for 180 game ticks
scoreboard players set @a[tag=ReannounceScore] pickupTimer 180
effect @a[score_pickupTimer_min=180,score_pickupTimer=180] minecraft:glowing 0
scoreboard players tag @a[score_pickupTimer_min=180,score_pickupTimer=180] remove Glowing

# Players glow until they pick up an ore1
scoreboard players tag @a[score_pickupTimer=0,tag=!Glowing] add StartGlowing
effect @a[tag=StartGlowing] minecraft:glowing 999999 0 false
# Title runs for 2 seconds and fades out over 1 second
title @a[tag=StartGlowing] times 0 40 10
execute @a[tag=StartGlowing] ~ ~ ~ title @s subtitle {"translate":"mk.glowing","color":"red"}
title @a[tag=StartGlowing] title {"text":" "}
scoreboard players tag @a[tag=StartGlowing] add Glowing
scoreboard players tag @a[tag=Glowing] remove StartGlowing

# Title stays for 6 seconds, fades out over 3.5 seconds.
# Additional 0.5 is to avoid blinking in
title @a[tag=ReannounceScore] times 0 120 70
execute @a[tag=ReannounceScore] ~ ~ ~ title @s subtitle {"translate":"mk.streak","color":"aqua","with":[{"score":{"name":"@s","objective":"displayStreak"}},{"score":{"name":"@s","objective":"Score"}}]}
title @a[tag=ReannounceScore] title {"text":" "}
scoreboard players tag @a[tag=ReannounceScore] remove ReannounceScore

# Tickdown and reset
scoreboard players remove @a[score_pickupTimer_min=1] pickupTimer 1
scoreboard players set @a[score_pickupTimer=0] displayStreak 0