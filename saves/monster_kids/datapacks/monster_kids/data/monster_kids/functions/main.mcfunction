execute if entity @a[tag=!Register] run function monster_kids:player/register

function monster_kids:player/check_location_and_keep_in_bounds

function monster_kids:player/flag_dead_players
execute if entity @a[tag=RefillItems] run function monster_kids:player/refill_items

execute unless entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=RoundInProgress] run function monster_kids:menu/class_selected
execute unless entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=RoundInProgress] run function monster_kids:menu/spectate
execute unless entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=RoundInProgress] run function monster_kids:menu/team_selected

execute if entity @a[scores={startRound=1..}] run function monster_kids:testfor_start_round_conditions
execute if entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=StartRound] run function monster_kids:start_round

execute if entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=RoundInProgress] run function monster_kids:game

execute if entity @e[type=minecraft:area_effect_cloud,tag=Main,tag=EndRound] run function monster_kids:end_round