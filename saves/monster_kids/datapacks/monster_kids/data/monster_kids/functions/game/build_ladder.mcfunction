# Test Player On Ladder
execute as @a[tag=ClassLadder] at @s if block ~ ~ ~ minecraft:ladder run tag @s add OnLadder
execute as @a[tag=OnLadder] at @s if block ~ ~ ~ minecraft:ladder[facing=north] run tag @s add OnLadderNorth
execute as @a[tag=OnLadder] at @s if block ~ ~ ~ minecraft:ladder[facing=south] run tag @s add OnLadderSouth
execute as @a[tag=OnLadder] at @s if block ~ ~ ~ minecraft:ladder[facing=west] run tag @s add OnLadderWest
execute as @a[tag=OnLadder] at @s if block ~ ~ ~ minecraft:ladder[facing=east] run tag @s add OnLadderEast

# Test Up Down For Valid Space
execute as @a[tag=OnLadder] at @s if block ~ ~1 ~ minecraft:air run tag @s add BuildLadderUp
tag @a[tag=BuildLadderUp,tag=OnLadderNorth] add BuildLadderUpNorth
tag @a[tag=BuildLadderUp,tag=OnLadderSouth] add BuildLadderUpSouth
tag @a[tag=BuildLadderUp,tag=OnLadderWest] add BuildLadderUpWest
tag @a[tag=BuildLadderUp,tag=OnLadderEast] add BuildLadderUpEast
tag @a[tag=BuildLadderUp] remove BuildLadderUp
execute as @a[tag=OnLadder] at @s if block ~ ~-1 ~ minecraft:air run tag @s add BuildLadderDown
tag @a[tag=BuildLadderDown,tag=OnLadderNorth] add BuildLadderDownNorth
tag @a[tag=BuildLadderDown,tag=OnLadderSouth] add BuildLadderDownSouth
tag @a[tag=BuildLadderDown,tag=OnLadderWest] add BuildLadderDownWest
tag @a[tag=BuildLadderDown,tag=OnLadderEast] add BuildLadderDownEast
tag @a[tag=BuildLadderDown] remove BuildLadderDown

tag @a[tag=OnLadderNorth] remove OnLadderNorth
tag @a[tag=OnLadderSouth] remove OnLadderSouth
tag @a[tag=OnLadderWest] remove OnLadderWest
tag @a[tag=OnLadderEast] remove OnLadderEast
tag @a[tag=OnLadder] remove OnLadder

# Test Invalid Place Up North
execute as @a[tag=BuildLadderUpNorth] at @s if block ~ ~1 ~1 #monster_kids:no_ladder unless block ~ ~1 ~1 #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderUpNorth
execute at @a[tag=BuildLadderUpNorth] run setblock ~ ~1 ~ minecraft:ladder[facing=north]
execute at @a[tag=BuildLadderUpNorth] run playsound minecraft:block.ladder.place block @a ~ ~1 ~ 1 1.5
tag @a[tag=BuildLadderUpNorth] remove BuildLadderUpNorth

# Test Invalid Place Up South
execute as @a[tag=BuildLadderUpSouth] at @s if block ~ ~1 ~-1 #monster_kids:no_ladder unless block ~ ~1 ~-1 #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderUpSouth
execute at @a[tag=BuildLadderUpSouth] run setblock ~ ~1 ~ minecraft:ladder[facing=south]
execute at @a[tag=BuildLadderUpSouth] run playsound minecraft:block.ladder.place block @a ~ ~1 ~ 1 1.5
tag @a[tag=BuildLadderUpSouth] remove BuildLadderUpSouth

# Test Invalid Place Up West
execute as @a[tag=BuildLadderUpWest] at @s if block ~1 ~1 ~ #monster_kids:no_ladder unless block ~1 ~1 ~ #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderUpWest
execute at @a[tag=BuildLadderUpWest] run setblock ~ ~1 ~ minecraft:ladder[facing=west]
execute at @a[tag=BuildLadderUpWest] run playsound minecraft:block.ladder.place block @a ~ ~1 ~ 1 1.5
tag at @a[tag=BuildLadderUpWest] remove BuildLadderUpWest

# Test Invalid Place Up East
execute as @a[tag=BuildLadderUpEast] at @s if block ~-1 ~1 ~ #monster_kids:no_ladder unless block ~-1 ~1 ~ #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderUpEast
execute at @a[tag=BuildLadderUpEast] run setblock ~ ~1 ~ minecraft:ladder[facing=east]
execute at @a[tag=BuildLadderUpEast] run playsound minecraft:block.ladder.place block @a ~ ~1 ~ 1 1.5
tag at @a[tag=BuildLadderUpEast] remove BuildLadderUpEast

# Test Invalid Place Down North
execute as @a[tag=BuildLadderDownNorth] at @s if block ~ ~-1 ~1 #monster_kids:no_ladder unless block ~ ~-1 ~1 #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderDownNorth
execute at @a[tag=BuildLadderDownNorth] run setblock ~ ~-1 ~ minecraft:ladder[facing=north]
execute at @a[tag=BuildLadderDownNorth] run playsound minecraft:block.ladder.place block @a ~ ~-1 ~ 1 1.5
tag @a[tag=BuildLadderDownNorth] remove BuildLadderDownNorth

# Test Invalid Place Down South
execute as @a[tag=BuildLadderDownSouth] at @s if block ~ ~-1 ~-1 #monster_kids:no_ladder unless block ~ ~-1 ~-1 #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderDownSouth
execute at @a[tag=BuildLadderDownSouth] run setblock ~ ~-1 ~ minecraft:ladder[facing=south]
execute at @a[tag=BuildLadderDownSouth] run playsound minecraft:block.ladder.place block @a ~ ~-1 ~ 1 1.5
tag @a[tag=BuildLadderDownSouth] remove BuildLadderDownSouth

# Test Invalid Place Down West
execute as @a[tag=BuildLadderDownWest] at @s if block ~1 ~-1 ~ #monster_kids:no_ladder unless block ~1 ~-1 ~ #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderDownWest
execute at @a[tag=BuildLadderDownWest] run setblock ~ ~-1 ~ minecraft:ladder[facing=west]
execute at @a[tag=BuildLadderDownWest] run playsound minecraft:block.ladder.place block @a ~ ~-1 ~ 1 1.5
tag at @a[tag=BuildLadderDownWest] remove BuildLadderDownWest

# Test Invalid Place Down East
execute as @a[tag=BuildLadderDownEast] at @s if block ~-1 ~-1 ~ #monster_kids:no_ladder unless block ~-1 ~-1 ~ #monster_kids:no_ladder_slabs[type=double] run tag @s remove BuildLadderDownEast
execute at @a[tag=BuildLadderDownEast] run setblock ~ ~-1 ~ minecraft:ladder[facing=east]
execute at @a[tag=BuildLadderDownEast] run playsound minecraft:block.ladder.place block @a ~ ~-1 ~ 1 1.5
tag at @a[tag=BuildLadderDownEast] remove BuildLadderDownEast