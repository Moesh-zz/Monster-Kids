# Convert ore to food and kill experience orbs
scoreboard players tag @e[type=item] add ConvertToFood {Item:{id:"minecraft:coal"}}
scoreboard players tag @e[type=item] add ConvertToFood {Item:{id:"minecraft:diamond"}}
scoreboard players tag @e[type=item] add ConvertToFood {Item:{id:"minecraft:emerald"}}
scoreboard players tag @e[type=item] add ConvertToFood {Item:{id:"minecraft:dye",Damage:4s}}
scoreboard players tag @e[type=item] add ConvertToFood {Item:{id:"minecraft:redstone"}}
scoreboard players tag @e[type=item] add ConvertToFood {Item:{id:"minecraft:quartz"}}
entitydata @e[type=item,tag=ConvertToFood] {Item:{id:"minecraft:cooked_beef",Damage:0s}}
scoreboard players tag @e[type=item,tag=ConvertToFood] remove ConvertToFood {Item:{id:"minecraft:cooked_beef"}}

# Convert all non-food drops to glass
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:bedrock"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:cobblestone"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:dirt"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:glowstone_dust"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:nether_brick"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:nether_brick_fence"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:nether_brick_stairs"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:netherrack"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:prismarine_crystals"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:purpur_block"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:purpur_pillar"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:redstone_lamp"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:stained_hardened_clay"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:stone"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:stone_slab"}}
scoreboard players tag @e[type=item] add ConvertToGlass {Item:{id:"minecraft:stonebrick"}}
entitydata @e[type=item,tag=ConvertToGlass] {Item:{id:"minecraft:glass",Damage:0}}
scoreboard players tag @e[type=item,tag=ConvertToGlass] remove ConvertToGlass {Item:{id:"minecraft:glass"}}

# Kill banned pick-up items
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:elytra"}}
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:ender_pearl"}}
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:fireworks"}}
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:ladder"}}
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:slime"}}
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:torch"}}
kill @e[type=item,tag=KillItem]
kill @e[type=xp_orb]