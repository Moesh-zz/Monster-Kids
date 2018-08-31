# TagPlayersToBankSamples
execute at @e[type=minecraft:iron_golem,tag=James,tag=AbleToBank] run tag @a[distance=2..,tag=AlreadyBanked] remove AlreadyBanked
execute at @e[type=minecraft:iron_golem,tag=James,tag=AbleToBank] run tag @a[distance=..2,tag=!AlreadyBanked] add HasOresToBank
execute at @e[type=minecraft:iron_golem,tag=James,tag=AbleToBank] run tag @a[gamemode=adventure,tag=HasOresToBank] remove HasOresToBank

# BankSamples
scoreboard players set @a[tag=HasOresToBank] bankedCurrent 0
execute as @a[tag=HasOresToBank] run scoreboard players operation @s bankedCurrent = @s holdingTotal
execute as @a[tag=HasOresToBank] run scoreboard players operation @s bankedTotal += @s bankedCurrent

clear @a[tag=HasOresToBank] minecraft:cooked_beef

scoreboard players set @a[tag=HasOresToBank] holdingTotal 0

execute at @a[tag=HasOresToBank,scores={bankedCurrent=1..}] ~ ~ ~ playsound minecraft:entity.villager.yes master @s
execute at @a[tag=HasOresToBank,scores={bankedCurrent=..0}] ~ ~ ~ playsound minecraft:entity.villager.no master @s
execute as @a[tag=HasOresToBank] run tellraw @s {"translate":"Banked %s ore samples. %s total.", "color":"green", "with":[{"score": {"name":"@s", "objective":"bankedCurrent"}, "color":"white"}, {"score":{"name":"@s", "objective":"bankedTotal"}, "color":"white"} ] }
tag @a[tag=HasOresToBank] add AlreadyBanked
tag @a[tag=HasOresToBank] add RefillItems
tag @a[tag=HasOresToBank] remove HasOresToBank