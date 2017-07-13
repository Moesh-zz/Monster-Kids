# Convert ore to food and kill experience orbs
scoreboard players tag @e[type=item] add CovertCoalToEye {Item:{id:"minecraft:coal"}}
entitydata @e[type=item,tag=CovertCoalToEye] {Item:{id:"minecraft:spider_eye"}}
scoreboard players tag @e[type=item,tag=CovertCoalToEye] remove CovertCoalToEye {Item:{id:"minecraft:spider_eye"}}

scoreboard players tag @e[type=item] add CovertDiamondToPie {Item:{id:"minecraft:diamond"}}
entitydata @e[type=item,tag=CovertDiamondToPie] {Item:{id:"minecraft:pumpkin_pie"}}
scoreboard players tag @e[type=item,tag=CovertDiamondToPie] remove CovertDiamondToPie {Item:{id:"minecraft:pumpkin_pie"}}

scoreboard players tag @e[type=item] add CovertEmeraldToPotato {Item:{id:"minecraft:emerald"}}
entitydata @e[type=item,tag=CovertEmeraldToPotato] {Item:{id:"minecraft:baked_potato"}}
scoreboard players tag @e[type=item,tag=CovertEmeraldToPotato] remove CovertEmeraldToPotato {Item:{id:"minecraft:baked_potato"}}

scoreboard players tag @e[type=item] add ConvertLapisToSalmon {Item:{id:"minecraft:dye",Damage:4s}}
entitydata @e[type=item,tag=ConvertLapisToSalmon] {Item:{id:"minecraft:cooked_fish",Damage:1s}}
scoreboard players tag @e[type=item,tag=ConvertLapisToSalmon] remove ConvertLapisToSalmon {Item:{id:"minecraft:cooked_fish",Damage:1s}}

scoreboard players tag @e[type=item] add CovertRedstoneToMutton {Item:{id:"minecraft:redstone"}}
entitydata @e[type=item,tag=CovertRedstoneToMutton] {Item:{id:"minecraft:cooked_mutton"}}
scoreboard players tag @e[type=item,tag=CovertRedstoneToMutton] remove CovertRedstoneToMutton {Item:{id:"minecraft:cooked_mutton"}}

scoreboard players tag @e[type=item] add CovertQuartzToChorus {Item:{id:"minecraft:quartz"}}
entitydata @e[type=item,tag=CovertQuartzToChorus] {Item:{id:"minecraft:chorus_fruit"}}
scoreboard players tag @e[type=item,tag=CovertQuartzToChorus] remove CovertQuartzToChorus {Item:{id:"minecraft:chorus_fruit"}}

kill @e[type=xp_orb]

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
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:tnt"}}
scoreboard players tag @e[type=item] add KillItem {Item:{id:"minecraft:torch"}}
kill @e[type=item,tag=KillItem]