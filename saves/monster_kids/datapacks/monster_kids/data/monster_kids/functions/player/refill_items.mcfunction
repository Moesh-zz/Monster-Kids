execute unless entity @e[type=area_effect_cloud,tag=Main,tag=RoundInProgress] run function monster_kids:player/apply_pregame_effects

effect give @a[tag=RefillItems] minecraft:instant_health 1 3 true
effect give @a[tag=RefillItems] minecraft:saturation 5 100 true

# Determine what items need to be refilled
execute as @a[tag=RefillItems] store result score @s AffectedItems run clear @s minecraft:iron_pickaxe 0
tag @a[tag=RefillItems,scores={AffectedItems=0}] add RefillClaw

execute as @a[tag=RefillItems] store result score @s AffectedItems run clear @s minecraft:iron_boots 0
tag @a[tag=RefillItems,scores={AffectedItems=0}] add RefillBoots

execute as @a[tag=RefillItems] store result score @s AffectedItems run clear @s minecraft:shield 0
tag @a[tag=RefillItems,tag=!ClassLadder,scores={AffectedItems=0}] add RefillShield

execute as @a[tag=RefillItems] store result score @s AffectedItems run clear @s minecraft:glass 0
tag @a[tag=RefillItems,scores=AffectedItems=1..}] add ClearScaffold

tag @a[tag=RefillItems,tag=ClassElytra] add RefillElytra
tag @a[tag=RefillItems,tag=ClassLadder] add RefillLadder
tag @a[tag=RefillItems,tag=ClassPearl] add RefillPearl
tellraw @a[tag=RefillItems] {"translate":"mk.items.refilled"}

tag @a[tag=RefillItems] add RefillTorches
tag @a[tag=RefillItems] remove RefillItems

# Refill specific items
# Digging Claw
give @a[tag=RefillClaw] minecraft:iron_pickaxe{Unbreakable:1b, Damage:195, AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5d,Operation:0,UUIDLeast:98680l,UUIDMost:84995l,Slot:"mainhand"}, {AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1d,Operation:0,UUIDLeast:489070l,UUIDMost:130734l,Slot:"mainhand"} ], Enchantments:[{id:"minecraft:mending",lvl:1s}, {id:"minecraft:vanishing_curse",lvl:1s} ] }
tag @a[tag=RefillClaw] remove RefillClaw

# Clear additional scaffolding
clear @a[tag=ClearScaffold] minecraft:glass
tag @a[tag=ClearScaffold] remove ClearScaffold

# Glowing Mushrooms
clear @a[tag=RefillTorches] minecraft:torch
give @a[tag=RefillTorches] minecraft:torch 24
tag @a[tag=RefillTorches] remove RefillTorches

# Monster Booties
replaceitem entity @a[tag=RefillBoots] armor.feet minecraft:iron_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:20d,Operation:0,UUIDLeast:881317l,UUIDMost:191968l,Slot:"feet"}],Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
tag @a[tag=RefillBoots] remove RefillBoots

# Shield Claw
replaceitem entity @a[tag=RefillShield] weapon.offhand minecraft:shield{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
tag @a[tag=RefillShield] remove RefillShield

# Elytra
replaceitem entity @a[tag=RefillElytra] armor.chest minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
clear @a[tag=RefillElytra] minecraft:firework_rocket
give @a[tag=RefillElytra] minecraft:firework_rocket{Item:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b}}}} 4
tag @a[tag=RefillElytra] remove RefillElytra

# Ladder
clear @a[tag=RefillLadder] minecraft:ladder
clear @a[tag=RefillLadder] minecraft:totem_of_undying
replaceitem entity @a[tag=RefillLadder] weapon.offhand minecraft:totem_of_undying 1 0 {Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
give @a[tag=RefillLadder] minecraft:ladder{AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1d,Operation:0,UUIDLeast:686410l,UUIDMost:699212l,Slot:"offhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1d,Operation:0,UUIDLeast:686413l,UUIDMost:699215l,Slot:"mainhand"}]} 16
tag @a[tag=RefillLadder] remove RefillLadder

# Pearl
clear @p[tag=RefillPearl] minecraft:ender_pearl
give @p[tag=RefillPearl] minecraft:ender_pearl 4
tag @a[tag=RefillPearl] remove RefillPearl