# Reset level with moeshmk1 structure block
setblock 80 1 3151 minecraft:redstone_block
setblock 80 1 3151 minecraft:stone
# Reset menu with main_menu structure block
setblock 127 49 3203 minecraft:redstone_block
setblock 127 49 3203 minecraft:stone

# Kill all living, non-player entities by teleporting them to the bottom of the world.
# This cleans up all additional entities when entities are destroyed.
tp @e[x=80,y=0,z=3152,dx=95,dy=95,dz=95,type=!Player] ~ -4096 ~
summon minecraft:villager_golem 129 51 3198 {CustomName:"James",CustomNameVisible:1,Tags:["Lobby","James"],NoGravity:1b,Invulnerable:1,Rotation:[45f,-50f],PersistenceRequired:1,NoAI:1,Silent:1,Glowing:1}