# Test amount of coal
execute if entity @a[team=blue,scores={mineCoal=1..}] if score Blue combinedScores matches 0..63 run scoreboard players set @a[team=blue] EffectCoal 1
execute if entity @a[team=blue,scores={mineCoal=1..}] if score Blue combinedScores matches 64..127 run scoreboard players set @a[team=blue] EffectCoal 2
execute if entity @a[team=blue,scores={mineCoal=1..}] if score Blue combinedScores matches 128..191 run scoreboard players set @a[team=blue] EffectCoal 3
execute if entity @a[team=blue,scores={mineCoal=1..}] if score Blue combinedScores matches 192.. run scoreboard players set @a[team=blue] EffectCoal 4
scoreboard players set @a[team=blue,scores={mineCoal=1..}] mineCoal 0

execute if entity @a[team=red,scores={mineCoal=1..}] if score Red combinedScores matches 0..63 run scoreboard players set @a[team=red] EffectCoal 1
execute if entity @a[team=red,scores={mineCoal=1..}] if score Red combinedScores matches 64..127 run scoreboard players set @a[team=red] EffectCoal 2
execute if entity @a[team=red,scores={mineCoal=1..}] if score Red combinedScores matches 128..191 run scoreboard players set @a[team=red] EffectCoal 3
execute if entity @a[team=red,scores={mineCoal=1..}] if score Red combinedScores matches 192.. run scoreboard players set @a[team=red] EffectCoal 4
scoreboard players set @a[team=red,scores={mineCoal=1..}] mineCoal 0

# Test amount of lapis
execute if entity @a[team=blue,scores={mineLapis=1..}] if score Blue combinedScores matches 0..63 run scoreboard players set @a[team=blue] EffectLapis 1
execute if entity @a[team=blue,scores={mineLapis=1..}] if score Blue combinedScores matches 64..127 run scoreboard players set @a[team=blue] EffectLapis 2
execute if entity @a[team=blue,scores={mineLapis=1..}] if score Blue combinedScores matches 128..191 run scoreboard players set @a[team=blue] EffectLapis 3
execute if entity @a[team=blue,scores={mineLapis=1..}] if score Blue combinedScores matches 192.. run scoreboard players set @a[team=blue] EffectLapis 4
scoreboard players set @a[team=blue,scores={mineLapis=1..}] mineLapis 0

execute if entity @a[team=red,scores={mineLapis=1..}] if score Red combinedScores matches 0..63 run scoreboard players set @a[team=red] EffectLapis 1
execute if entity @a[team=red,scores={mineLapis=1..}] if score Red combinedScores matches 64..127 run scoreboard players set @a[team=red] EffectLapis 2
execute if entity @a[team=red,scores={mineLapis=1..}] if score Red combinedScores matches 128..191 run scoreboard players set @a[team=red] EffectLapis 3
execute if entity @a[team=red,scores={mineLapis=1..}] if score Red combinedScores matches 192.. run scoreboard players set @a[team=red] EffectLapis 4
scoreboard players set @a[team=red,scores={mineLapis=1..}] mineLapis 0

# Test amount of diamond
execute if entity @a[team=blue,scores={mineDiamond=1..}] if score Blue combinedScores matches 0..63 run scoreboard players set @a[team=blue] EffectDiamond 1
execute if entity @a[team=blue,scores={mineDiamond=1..}] if score Blue combinedScores matches 64..127 run scoreboard players set @a[team=blue] EffectDiamond 2
execute if entity @a[team=blue,scores={mineDiamond=1..}] if score Blue combinedScores matches 128..191 run scoreboard players set @a[team=blue] EffectDiamond 3
execute if entity @a[team=blue,scores={mineDiamond=1..}] if score Blue combinedScores matches 192.. run scoreboard players set @a[team=blue] EffectDiamond 4
scoreboard players set @a[team=blue,scores={mineDiamond=1..}] mineDiamond 0

execute if entity @a[team=red,scores={mineDiamond=1..}] if score Red combinedScores matches 0..63 run scoreboard players set @a[team=red] EffectDiamond 1
execute if entity @a[team=red,scores={mineDiamond=1..}] if score Red combinedScores matches 64..127 run scoreboard players set @a[team=red] EffectDiamond 2
execute if entity @a[team=red,scores={mineDiamond=1..}] if score Red combinedScores matches 128..191 run scoreboard players set @a[team=red] EffectDiamond 3
execute if entity @a[team=red,scores={mineDiamond=1..}] if score Red combinedScores matches 192.. run scoreboard players set @a[team=red] EffectDiamond 4
scoreboard players set @a[team=red,scores={mineDiamond=1..}] mineDiamond 0

# Test amount of emerald
execute if entity @a[team=blue,scores={mineEmerald=1..}] if score Blue combinedScores matches 0..63 run scoreboard players set @a[team=blue] EffectEmerald 1
execute if entity @a[team=blue,scores={mineEmerald=1..}] if score Blue combinedScores matches 64..127 run scoreboard players set @a[team=blue] EffectEmerald 2
execute if entity @a[team=blue,scores={mineEmerald=1..}] if score Blue combinedScores matches 128..191 run scoreboard players set @a[team=blue] EffectEmerald 3
execute if entity @a[team=blue,scores={mineEmerald=1..}] if score Blue combinedScores matches 192.. run scoreboard players set @a[team=blue] EffectEmerald 4
scoreboard players set @a[team=blue,scores={mineEmerald=1..}] mineEmerald 0

execute if entity @a[team=red,scores={mineEmerald=1..}] if score Red combinedScores matches 0..63 run scoreboard players set @a[team=red] EffectEmerald 1
execute if entity @a[team=red,scores={mineEmerald=1..}] if score Red combinedScores matches 64..127 run scoreboard players set @a[team=red] EffectEmerald 2
execute if entity @a[team=red,scores={mineEmerald=1..}] if score Red combinedScores matches 128..191 run scoreboard players set @a[team=red] EffectEmerald 3
execute if entity @a[team=red,scores={mineEmerald=1..}] if score Red combinedScores matches 192.. run scoreboard players set @a[team=red] EffectEmerald 4
scoreboard players set @a[team=red,scores={mineEmerald=1..}] mineEmerald 0

# Test amount of redstone
execute if entity @a[team=blue,scores={mineRedstone=1..}] if score Blue combinedScores matches 0..63 run scoreboard players set @a[team=blue] EffectRedstone 1
execute if entity @a[team=blue,scores={mineRedstone=1..}] if score Blue combinedScores matches 64..127 run scoreboard players set @a[team=blue] EffectRedstone 2
execute if entity @a[team=blue,scores={mineRedstone=1..}] if score Blue combinedScores matches 128..191 run scoreboard players set @a[team=blue] EffectRedstone 3
execute if entity @a[team=blue,scores={mineRedstone=1..}] if score Blue combinedScores matches 192.. run scoreboard players set @a[team=blue] EffectRedstone 4
scoreboard players set @a[team=blue,scores={mineRedstone=1..}] mineRedstone 0

execute if entity @a[team=red,scores={mineRedstone=1..}] if score Red combinedScores matches 0..63 run scoreboard players set @a[team=red] EffectRedstone 1
execute if entity @a[team=red,scores={mineRedstone=1..}] if score Red combinedScores matches 64..127 run scoreboard players set @a[team=red] EffectRedstone 2
execute if entity @a[team=red,scores={mineRedstone=1..}] if score Red combinedScores matches 128..191 run scoreboard players set @a[team=red] EffectRedstone 3
execute if entity @a[team=red,scores={mineRedstone=1..}] if score Red combinedScores matches 192.. run scoreboard players set @a[team=red] EffectRedstone 4
scoreboard players set @a[team=red,scores={mineRedstone=1..}] mineRedstone 0