# Purpose: Display players pick-up streak and total items held

# Combine scores on @s in pickupStreak
execute @a[score_pickupEye_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupEye
execute @a[score_pickupMutton_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupMutton
execute @a[score_pickupFish_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupFish
execute @a[score_pickupPie_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupPie
execute @a[score_pickupPotato_min=1] ~ ~ ~ scoreboard players operation @s pickupStreak += @s pickupPotato
# Reset pickup score
scoreboard players set @a[score_pickupEye_min=1] pickupEye 0
scoreboard players set @a[score_pickupMutton_min=1] pickupMutton 0
scoreboard players set @a[score_pickupFish_min=1] pickupFish 0
scoreboard players set @a[score_pickupPie_min=1] pickupPie 0
scoreboard players set @a[score_pickupPotato_min=1] pickupPotato 0

# IF player picked up a new food item, reannounce current streak and holding
scoreboard players tag @a[score_pickupStreak_min=1] add ReannounceScore
execute @a[tag=ReannounceScore] ~ ~ ~ scoreboard players operation @s displayStreak += @s pickupStreak
scoreboard players set @a[tag=ReannounceScore] pickupStreak 0
# Add delay in game ticks
scoreboard players set @a[tag=ReannounceScore] pickupTimer 180
effect @a[score_pickupTimer_min=180,score_pickupTimer=180] minecraft:glowing 0
scoreboard players tag @a[score_pickupTimer_min=180,score_pickupTimer=180] remove Glowing

# Players glow until they pick up an ore
scoreboard players tag @a[score_pickupTimer=0,tag=!Glowing] add TagPlayerAsGlowing
effect @a[tag=TagPlayerAsGlowing] minecraft:glowing 999999 0 false
    # Title runs for 2 seconds and fades out over 1 second
    title @a[tag=TagPlayerAsGlowing] times 0 40 10
    execute @a[tag=TagPlayerAsGlowing] ~ ~ ~ title @s subtitle {"translate":"mk.glowing","color":"red"}
    title @a[tag=TagPlayerAsGlowing] title {"text":" "}
    scoreboard players tag @a[tag=TagPlayerAsGlowing] add Glowing
    scoreboard players tag @a[tag=Glowing] remove TagPlayerAsGlowing
    # Title stays for 6 seconds, fades out over 3.05 seconds. Additional 0.5
    title @a[tag=ReannounceScore] times 0 120 61
    execute @a[tag=ReannounceScore] ~ ~ ~ title @s subtitle {"translate":"mk.streak","color":"aqua","with":[{"score":{"name":"@s","objective":"displayStreak"}},{"score":{"name":"@s","objective":"holdingTotal"}}]}
    title @a[tag=ReannounceScore] title {"text":" "}
    scoreboard players tag @a[tag=ReannounceScore] remove ReannounceScore

# Tickdown and reset
scoreboard players remove @a[score_pickupTimer_min=1] pickupTimer 1
scoreboard players set @a[score_pickupTimer=0] displayStreak 0