effect @a[score_EffectCoal_min=1,score_EffectCoal=1] minecraft:haste 11 0 false
effect @a[score_EffectCoal_min=2,score_EffectCoal=2] minecraft:haste 13 1 false
effect @a[score_EffectCoal_min=3,score_EffectCoal=3] minecraft:haste 15 2 false
effect @a[score_EffectCoal_min=4,score_EffectCoal=4] minecraft:haste 17 3 false
scoreboard players set @a[score_EffectCoal_min=1] EffectCoal 0

effect @a[score_EffectDiamond_min=1,score_EffectDiamond=1] minecraft:regeneration 11 0 false
effect @a[score_EffectDiamond_min=2,score_EffectDiamond=2] minecraft:regeneration 13 1 false
effect @a[score_EffectDiamond_min=3,score_EffectDiamond=3] minecraft:regeneration 15 2 false
effect @a[score_EffectDiamond_min=4,score_EffectDiamond=4] minecraft:regeneration 17 3 false
scoreboard players set @a[score_EffectDiamond_min=1] EffectDiamond 0

effect @a[score_EffectEmerald_min=1,score_EffectEmerald=1] minecraft:absorption 11 0 false
effect @a[score_EffectEmerald_min=2,score_EffectEmerald=2] minecraft:absorption 13 0 false
effect @a[score_EffectEmerald_min=3,score_EffectEmerald=3] minecraft:absorption 15 1 false
effect @a[score_EffectEmerald_min=4,score_EffectEmerald=4] minecraft:absorption 17 2 false
scoreboard players set @a[score_EffectEmerald_min=1] EffectEmerald 0

effect @a[score_EffectLapis_min=1,score_EffectLapis=1] minecraft:water_breathing 11 0 false
effect @a[score_EffectLapis_min=2,score_EffectLapis=2] minecraft:water_breathing 13 1 false
effect @a[score_EffectLapis_min=3,score_EffectLapis=3] minecraft:water_breathing 15 2 false
effect @a[score_EffectLapis_min=4,score_EffectLapis=4] minecraft:water_breathing 17 3 false
scoreboard players set @a[score_EffectLapis_min=1] EffectLapis 0

effect @a[score_EffectRedstone_min=1,score_EffectRedstone=1] minecraft:fire_resistance 11 0 false
effect @a[score_EffectRedstone_min=2,score_EffectRedstone=2] minecraft:fire_resistance 13 0 false
effect @a[score_EffectRedstone_min=3,score_EffectRedstone=3] minecraft:fire_resistance 15 0 false
effect @a[score_EffectRedstone_min=4,score_EffectRedstone=4] minecraft:fire_resistance 17 0 false
scoreboard players set @a[score_EffectRedstone_min=1] EffectRedstone 0

scoreboard players tag @e[type=area_effect_cloud,name=MiningEffects] remove NoEffectsNeeded