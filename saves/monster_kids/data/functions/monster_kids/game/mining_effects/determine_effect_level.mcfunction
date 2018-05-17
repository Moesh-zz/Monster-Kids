# Test amount of coal
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectCoal 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectCoal 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectCoal 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectCoal 4
scoreboard players set @a[team=blue,score_mineCoal_min=1] mineCoal 0

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectCoal 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectCoal 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectCoal 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineCoal_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectCoal 4
scoreboard players set @a[team=red,score_mineCoal_min=1] mineCoal 0

# Test amount of lapis
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectLapis 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectLapis 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectLapis 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectLapis 4
scoreboard players set @a[team=blue,score_mineLapis_min=1] mineLapis 0

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectLapis 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectLapis 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectLapis 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineLapis_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectLapis 4
scoreboard players set @a[team=red,score_mineLapis_min=1] mineLapis 0

# Test amount of diamond
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectDiamond 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectDiamond 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectDiamond 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectDiamond 4
scoreboard players set @a[team=blue,score_mineDiamond_min=1] mineDiamond 0

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectDiamond 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectDiamond 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectDiamond 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineDiamond_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectDiamond 4
scoreboard players set @a[team=red,score_mineDiamond_min=1] mineDiamond 0

# Test amount of emerald
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectEmerald 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectEmerald 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectEmerald 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectEmerald 4
scoreboard players set @a[team=blue,score_mineEmerald_min=1] mineEmerald 0

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectEmerald 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectEmerald 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectEmerald 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineEmerald_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectEmerald 4
scoreboard players set @a[team=red,score_mineEmerald_min=1] mineEmerald 0

# Test amount of redstone
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectRedstone 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectRedstone 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectRedstone 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=blue,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Blue combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=blue] EffectRedstone 4
scoreboard players set @a[team=blue,score_mineRedstone_min=1] mineRedstone 0

execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 0 63
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectRedstone 1
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 64 127
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectRedstone 2
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 128 191
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectRedstone 3
execute @e[type=area_effect_cloud,name=Main] ~ ~ ~ testfor @a[team=red,score_mineRedstone_min=1]
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players test Red combinedScores 192
execute @e[type=area_effect_cloud,name=Main,score_SuccessCount_min=1] ~ ~ ~ scoreboard players set @a[team=red] EffectRedstone 4
scoreboard players set @a[team=red,score_mineRedstone_min=1] mineRedstone 0