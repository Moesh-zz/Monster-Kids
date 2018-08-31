effect give @a[scores={EffectCoal=1}] minecraft:haste 11 0 false
effect give @a[scores={EffectCoal=2}] minecraft:haste 13 1 false
effect give @a[scores={EffectCoal=3}] minecraft:haste 15 2 false
effect give @a[scores={EffectCoal=4}] minecraft:haste 17 3 false
scoreboard players set @a[scores={EffectCoal=1..}] EffectCoal 0

effect give @a[scores={EffectDiamond=1}] minecraft:regeneration 11 0 false
effect give @a[scores={EffectDiamond=2}] minecraft:regeneration 13 1 false
effect give @a[scores={EffectDiamond=3}] minecraft:regeneration 15 2 false
effect give @a[scores={EffectDiamond=4}] minecraft:regeneration 17 3 false
scoreboard players set @a[scores={EffectDiamond=1..}] EffectDiamond 0

effect give @a[scores={EffectEmerald=1}] minecraft:absorption 11 0 false
effect give @a[scores={EffectEmerald=2}] minecraft:absorption 13 0 false
effect give @a[scores={EffectEmerald=3}] minecraft:absorption 15 1 false
effect give @a[scores={EffectEmerald=4}] minecraft:absorption 17 2 false
scoreboard players set @a[scores={EffectEmerald=1..}] EffectEmerald 0

effect give @a[scores={EffectLapis=1}] minecraft:water_breathing 11 0 false
effect give @a[scores={EffectLapis=2}] minecraft:water_breathing 13 1 false
effect give @a[scores={EffectLapis=3}] minecraft:water_breathing 15 2 false
effect give @a[scores={EffectLapis=4}] minecraft:water_breathing 17 3 false
scoreboard players set @a[scores={EffectLapis=1..}] EffectLapis 0

effect give @a[scores={EffectRedstone=1}] minecraft:fire_resistance 11 0 false
effect give @a[scores={EffectRedstone=2}] minecraft:fire_resistance 13 0 false
effect give @a[scores={EffectRedstone=3}] minecraft:fire_resistance 15 0 false
effect give @a[scores={EffectRedstone=4}] minecraft:fire_resistance 17 0 false
scoreboard players set @a[scores={EffectRedstone=1..}] EffectRedstone 0

tag @e[type=minecraft:area_effect_cloud,tag=MiningEffects] remove NoEffectsNeeded