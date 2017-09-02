scoreboard players tag @e[type=area_effect_cloud,name=Main] remove RoundInProgress
function monster_kids:find_winning_team_and_display


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

scoreboard players set @a classSelected 0
scoreboard players set @a startRound 0
scoreboard players set @a teamSelected 0
scoreboard players set @a spectate
scoreboard players enable @a classSelected
scoreboard players enable @a startRound
scoreboard players enable @a teamSelected
scoreboard players enable @a spectate
scoreboard players tag @a remove Playing
scoreboard players tag @a remove Spectating
scoreboard players tag @a[tag=ClassElytra] remove ClassElytra
scoreboard players tag @a[tag=ClassLadder] remove ClassLadder
scoreboard players tag @a[tag=ClassPearl] remove ClassPearl
scoreboard teams join lobby @a

difficulty peaceful
gamemode adventure @a
clear @a
xp -999999 @a
xp -999999L @a
effect @a clear
scoreboard players tag @a add RefillItems
scoreboard players tag @e[type=villager_golem,name=James] remove AbleToBank
tp @a 126 51 3201 -135 0

scoreboard players tag @e[type=area_effect_cloud,name=Main] remove EndRound