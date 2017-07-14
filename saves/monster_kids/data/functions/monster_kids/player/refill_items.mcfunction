function monster_kids:player/apply_pregame_effects unless @e[type=area_effect_cloud,name=Main,tag=RoundInProgress]

effect @a[tag=RefillItems] minecraft:instant_health 1 3 true
effect @a[tag=RefillItems] minecraft:saturation 5 100 true

# Determine what items need to be refilled
execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:iron_pickaxe -1 0
scoreboard players tag @a[tag=RefillItems,score_AffectedItems=0] add RefillClaw

execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:iron_boots -1 0
scoreboard players tag @a[tag=RefillItems,score_AffectedItems=0] add RefillBoots

execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:shield -1 0
scoreboard players tag @a[tag=RefillItems,score_AffectedItems=0] add RefillShield

execute @a[tag=RefillItems] ~ ~ ~ clear @s minecraft:glass -1 0
scoreboard players tag @s[tag=RefillItems,score_AffectedItems=0] add ClearScaffold

execute @a[tag=RefillItems] ~ ~ ~ scoreboard players tag @s[tag=ClassElytra] add RefillElytra
execute @a[tag=RefillItems] ~ ~ ~ scoreboard players tag @s[tag=ClassLadder] add RefillLadder
execute @a[tag=RefillItems] ~ ~ ~ scoreboard players tag @s[tag=ClassPearl] add RefillPearl
tellraw @a[tag=RefillItems] {"translate":"mk.items.refilled"}

scoreboard players tag @a[tag=RefillItems] add RefillTorches
scoreboard players tag @a[tag=RefillItems] remove RefillItems

# Refill specific items
# Digging Claw
give @a[tag=RefillClaw] minecraft:iron_pickaxe 1 195 {Unbreakable:1, AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:98680,UUIDMost:84995,Slot:"mainhand"}, {AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:489070,UUIDMost:130734,Slot:"mainhand"} ], ench:[{id:70,lvl:1}, {id:71,lvl:1} ] }
scoreboard players tag @a[tag=RefillClaw] remove RefillClaw

clear @a[tag=ClearScaffold] minecraft:glass
tellraw @a[tag=ClearScaffold] minecraft:glass
scoreboard players tag @a[tag=ClearScaffold] remove ClearScaffold
# Glowing Mushrooms
clear @a[tag=RefillTorches] minecraft:torch
give @a[tag=RefillTorches] minecraft:torch 24
scoreboard players tag @a[tag=RefillTorches] remove RefillTorches

# Monster Booties
replaceitem entity @a[tag=RefillBoots] slot.armor.feet minecraft:iron_boots 1 0 {AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20,Operation:0,UUIDLeast:881317,UUIDMost:191968,Slot:"feet"}],Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
scoreboard players tag @a[tag=RefillBoots] remove RefillBoots

# Shield Claw
replaceitem entity @a[tag=RefillShield] slot.weapon.offhand minecraft:shield 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
scoreboard players tag @a[tag=RefillShield] remove RefillShield

# Elytra
replaceitem entity @a[tag=RefillElytra] slot.armor.chest minecraft:elytra 1 0 {ench:[{id:10,lvl:1},{id:71,lvl:1}]}
clear @a[tag=RefillElytra] minecraft:fireworks
give @a[tag=RefillElytra] minecraft:fireworks 4 0 {Item:{id:"minecraft:fireworks",Count:1b,tag:{Fireworks:{Flight:1b}},Damage:0s}}
scoreboard players tag @a[tag=RefillElytra] remove RefillElytra

# Ladder
clear @a[tag=RefillLadder] minecraft:ladder
clear @a[tag=RefillLadder] minecraft:tnt
clear @a[tag=RefillLadder] minecraft:flint_and_steel
give @a[tag=RefillLadder] minecraft:tnt 8
give @a[tag=RefillLadder] minecraft:flint_and_steel
give @a[tag=RefillLadder] minecraft:ladder 16 0 {AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1,Operation:0,UUIDLeast:686410,UUIDMost:699212,Slot:"offhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1,Operation:0,UUIDLeast:686413,UUIDMost:699215,Slot:"mainhand"}]}
scoreboard players tag @a[tag=RefillLadder] remove RefillLadder

# Pearl
clear @p[tag=RefillPearl] minecraft:ender_pearl
give @p[tag=RefillPearl] minecraft:ender_pearl 4
scoreboard players tag @a[tag=RefillPearl] remove RefillPearl