execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ effect @a[tag=RefillItems] minecraft:weakness 99999 255 true
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ effect @a[tag=RefillItems] minecraft:saturation 99999 255 true
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ effect @a[tag=RefillItems] minecraft:regeneration 99999 255 true
execute @e[type=area_effect_cloud,name=Main,tag=!RoundInProgress] ~ ~ ~ scoreboard players tag @a[tag=RefillItems] remove RefillItems
