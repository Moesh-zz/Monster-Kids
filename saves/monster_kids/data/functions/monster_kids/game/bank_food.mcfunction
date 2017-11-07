# TagPlayersToBankSamples
execute @e[type=villager_golem,name=James,tag=AbleToBank] ~ ~ ~ scoreboard players tag @a[rm=2,tag=AlreadyBanked] remove AlreadyBanked
execute @e[type=villager_golem,name=James,tag=AbleToBank] ~ ~ ~ scoreboard players tag @a[r=2,tag=!AlreadyBanked] add HasOresToBank
execute @e[type=villager_golem,name=James,tag=AbleToBank] ~ ~ ~ scoreboard players tag @a[m=3,tag=HasOresToBank] remove HasOresToBank

# BankSamples
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players set @p bankedCurrent 0
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players operation @p bankedCurrent = @p holdingEye
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players operation @p bankedCurrent += @p holdingMutton
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players operation @p bankedCurrent += @p holdingFish
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players operation @p bankedCurrent += @p holdingPie
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players operation @p bankedCurrent += @p holdingPotato
execute @a[tag=HasOresToBank] ~ ~ ~ scoreboard players operation @p bankedTotal += @p bankedCurrent

clear @a[tag=HasOresToBank] minecraft:spider_eye
clear @a[tag=HasOresToBank] minecraft:cooked_mutton
clear @a[tag=HasOresToBank] minecraft:cooked_fish
clear @a[tag=HasOresToBank] minecraft:pumpkin_pie
clear @a[tag=HasOresToBank] minecraft:baked_potato

scoreboard players set @a[tag=HasOresToBank] holdingEye 0
scoreboard players set @a[tag=HasOresToBank] holdingMutton 0
scoreboard players set @a[tag=HasOresToBank] holdingFish 0
scoreboard players set @a[tag=HasOresToBank] holdingPie 0
scoreboard players set @a[tag=HasOresToBank] holdingPotato 0

execute @a[tag=HasOresToBank,score_bankedCurrent_min=1] ~ ~ ~ playsound minecraft:entity.villager.yes master @p
execute @a[tag=HasOresToBank,score_bankedCurrent=0] ~ ~ ~ playsound minecraft:entity.villager.no master @p
execute @a[tag=HasOresToBank] ~ ~ ~ tellraw @p {"translate":"Banked %s ore samples. %s total.", "color":"green", "with":[{"score": {"name":"@p[c=1]", "objective":"bankedCurrent"}, "color":"white"}, {"score":{"name":"@p[c=1]", "objective":"bankedTotal"}, "color":"white"} ] }

scoreboard players tag @a[tag=HasOresToBank] add AlreadyBanked
scoreboard players tag @a[tag=HasOresToBank] add RefillItems
scoreboard players tag @a[tag=HasOresToBank] remove HasOresToBank