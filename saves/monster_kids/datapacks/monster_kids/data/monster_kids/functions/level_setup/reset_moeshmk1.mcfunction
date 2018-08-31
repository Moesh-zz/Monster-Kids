# Reset level with moeshmk1 structure block
setblock 80 1 3151 minecraft:redstone_block
setblock 80 1 3151 minecraft:stone
# Reset menu with main_menu structure block
setblock 127 49 3203 minecraft:redstone_block
setblock 127 49 3203 minecraft:stone

# Kill all living, non-player entities by teleporting them to the bottom of the world.
# This cleans up all additional entities when entities are destroyed.
teleport @e[x=80,y=0,z=3152,dx=95,dy=95,dz=95,type=!minecraft:player] ~ -4096 ~
summon minecraft:iron_golem 129 51 3198 {CustomName:"{\"text\":\"James\"}",CustomNameVisible:1b,Tags:["Lobby","James"],NoGravity:1b,Invulnerable:1b,Rotation:[45f,-50f],PersistenceRequired:1b,NoAI:1b,Silent:1b,Glowing:1b}