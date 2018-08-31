# Purpose: Display players pick-up streak and total items held

# Combine scores on @s in pickupStreak
execute as @a[scores={pickupFood=1..}] run scoreboard players operation @s pickupStreak += @s pickupFood
tag @a[scores={pickupStreak=1..}] add ReannounceScore
scoreboard players set @a[tag=ReannounceScore] pickupFood 0
execute as @a[tag=ReannounceScore] run scoreboard players operation @s displayStreak += @s pickupStreak
scoreboard players set @a[tag=ReannounceScore] pickupStreak 0

# If player picked up item, stop them from glowing for 180 game ticks
scoreboard players set @a[tag=ReannounceScore] pickupTimer 180
effect clear @a[scores={pickupTimer=180}] minecraft:glowing
scoreboard players tag @a[scores={pickupTimer=180}] remove Glowing

# Players glow until they pick up an ore1
tag @a[scores={pickupTimer=..0},tag=!Glowing] add StartGlowing
effect give @a[tag=StartGlowing] minecraft:glowing 999999 0 false
# Title runs for 2 seconds and fades out over 1 second
title @a[tag=StartGlowing] times 0 40 10
title @a[tag=StartGlowing] subtitle {"translate":"mk.glowing","color":"red"}
title @a[tag=StartGlowing] title {"text":" "}
tag @a[tag=StartGlowing] add Glowing
tag @a[tag=Glowing] remove StartGlowing

# Title stays for 6 seconds, fades out over 3.5 seconds.
# Additional 0.5 is to avoid blinking in
title @a[tag=ReannounceScore] times 0 120 70
title @a[tag=ReannounceScore] subtitle {"translate":"mk.streak","color":"aqua","with":[{"score":{"name":"@s","objective":"displayStreak"}},{"score":{"name":"@s","objective":"holdingTotal"}}]}
title @a[tag=ReannounceScore] title {"text":" "}
tag @a[tag=ReannounceScore] remove ReannounceScore

# Tickdown and reset
scoreboard players remove @a[scores={pickupTimer=1..}] pickupTimer 1
scoreboard players set @a[scores={pickupTimer=..0}] displayStreak 0