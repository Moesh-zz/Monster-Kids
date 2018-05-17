# Test Player On Ladder
execute @a[tag=ClassLadder] ~ ~ ~ detect ~ ~ ~ minecraft:ladder -1 scoreboard players tag @s add OnLadder
execute @a[tag=OnLadder] ~ ~ ~ detect ~ ~ ~ minecraft:ladder 2 scoreboard players tag @s add OnLadderNorth
execute @a[tag=OnLadder] ~ ~ ~ detect ~ ~ ~ minecraft:ladder 3 scoreboard players tag @s add OnLadderSouth
execute @a[tag=OnLadder] ~ ~ ~ detect ~ ~ ~ minecraft:ladder 4 scoreboard players tag @s add OnLadderWest
execute @a[tag=OnLadder] ~ ~ ~ detect ~ ~ ~ minecraft:ladder 5 scoreboard players tag @s add OnLadderEast

# Test Up Down For Valid Space
execute @a[tag=OnLadder] ~ ~ ~ detect ~ ~1 ~ minecraft:air -1 scoreboard players tag @s add BuildLadderUp
execute @a[tag=BuildLadderUp] ~ ~ ~ scoreboard players tag @s[tag=OnLadderNorth] add BuildLadderUpNorth
execute @a[tag=BuildLadderUp] ~ ~ ~ scoreboard players tag @s[tag=OnLadderSouth] add BuildLadderUpSouth
execute @a[tag=BuildLadderUp] ~ ~ ~ scoreboard players tag @s[tag=OnLadderWest] add BuildLadderUpWest
execute @a[tag=BuildLadderUp] ~ ~ ~ scoreboard players tag @s[tag=OnLadderEast] add BuildLadderUpEast
scoreboard players tag @a[tag=BuildLadderUp] remove BuildLadderUp
execute @a[tag=OnLadder] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 scoreboard players tag @s add BuildLadderDown
execute @a[tag=BuildLadderDown] ~ ~ ~ scoreboard players tag @s[tag=OnLadderNorth] add BuildLadderDownNorth
execute @a[tag=BuildLadderDown] ~ ~ ~ scoreboard players tag @s[tag=OnLadderSouth] add BuildLadderDownSouth
execute @a[tag=BuildLadderDown] ~ ~ ~ scoreboard players tag @s[tag=OnLadderWest] add BuildLadderDownWest
execute @a[tag=BuildLadderDown] ~ ~ ~ scoreboard players tag @s[tag=OnLadderEast] add BuildLadderDownEast
scoreboard players tag @a[tag=BuildLadderDown] remove BuildLadderDown

scoreboard players tag @a[tag=OnLadderNorth] remove OnLadderNorth
scoreboard players tag @a[tag=OnLadderSouth] remove OnLadderSouth
scoreboard players tag @a[tag=OnLadderWest] remove OnLadderWest
scoreboard players tag @a[tag=OnLadderEast] remove OnLadderEast
scoreboard players tag @a[tag=OnLadder] remove OnLadder

# Test Invalid Place Up North
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:air 0 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:glass -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:ice -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:ladder -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~ ~ detect ~ ~1 ~1 minecraft:torch -1 scoreboard players tag @s remove BuildLadderUpNorth
execute @a[tag=BuildLadderUpNorth] ~ ~1 ~ setblock ~ ~ ~ minecraft:ladder 2
execute @a[tag=BuildLadderUpNorth] ~ ~1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderUpNorth] remove BuildLadderUpNorth

# Test Invalid Place Up South
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:air 0 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:glass -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:ice -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:ladder -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~ ~ detect ~ ~1 ~-1 minecraft:torch -1 scoreboard players tag @s remove BuildLadderUpSouth
execute @a[tag=BuildLadderUpSouth] ~ ~1 ~ setblock ~ ~ ~ minecraft:ladder 3
execute @a[tag=BuildLadderUpSouth] ~ ~1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderUpSouth] remove BuildLadderUpSouth

# Test Invalid Place Up West
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:air 0 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:glass -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:ice -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:ladder -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~ ~ detect ~1 ~1 ~ minecraft:torch -1 scoreboard players tag @s remove BuildLadderUpWest
execute @a[tag=BuildLadderUpWest] ~ ~1 ~ setblock ~ ~ ~ minecraft:ladder 4
execute @a[tag=BuildLadderUpWest] ~ ~1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderUpWest] remove BuildLadderUpWest

# Test Invalid Place Up East
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:air 0 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:glass -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:ice -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:ladder -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~ ~ detect ~-1 ~1 ~ minecraft:torch -1 scoreboard players tag @s remove BuildLadderUpEast
execute @a[tag=BuildLadderUpEast] ~ ~1 ~ setblock ~ ~ ~ minecraft:ladder 5
execute @a[tag=BuildLadderUpEast] ~ ~1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderUpEast] remove BuildLadderUpEast

# Test Invalid Place Down North
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:air 0 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:glass -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:ice -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:ladder -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~ ~ detect ~ ~-1 ~1 minecraft:torch -1 scoreboard players tag @s remove BuildLadderDownNorth
execute @a[tag=BuildLadderDownNorth] ~ ~-1 ~ setblock ~ ~ ~ minecraft:ladder 2
execute @a[tag=BuildLadderDownNorth] ~ ~-1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderDownNorth] remove BuildLadderDownNorth

# Test Invalid Place Down South
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:air 0 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:glass -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:ice -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:ladder -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~ ~ detect ~ ~-1 ~-1 minecraft:torch -1 scoreboard players tag @s remove BuildLadderDownSouth
execute @a[tag=BuildLadderDownSouth] ~ ~-1 ~ setblock ~ ~ ~ minecraft:ladder 3
execute @a[tag=BuildLadderDownSouth] ~ ~-1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderDownSouth] remove BuildLadderDownSouth

# Test Invalid Place Down West
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:air 0 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:glass -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:ice -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:ladder -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~ ~ detect ~1 ~-1 ~ minecraft:torch -1 scoreboard players tag @s remove BuildLadderDownWest
execute @a[tag=BuildLadderDownWest] ~ ~-1 ~ setblock ~ ~ ~ minecraft:ladder 4
execute @a[tag=BuildLadderDownWest] ~ ~-1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderDownWest] remove BuildLadderDownWest

# Test Invalid Place Down East
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:air 0 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:glass -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:glass_pane -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:glowstone -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:ice -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:ladder -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:mossy_cobblestone_wall -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:purpur_slab -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:sea_lanterns -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:stained_glass -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:stained_glass_pane -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:stone_slab -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:stone_slab2 -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~ ~ detect ~-1 ~-1 ~ minecraft:torch -1 scoreboard players tag @s remove BuildLadderDownEast
execute @a[tag=BuildLadderDownEast] ~ ~-1 ~ setblock ~ ~ ~ minecraft:ladder 5
execute @a[tag=BuildLadderDownEast] ~ ~-1 ~ playsound minecraft:block.ladder.place block @a ~ ~ ~ 1 1.5
scoreboard players tag @a[tag=BuildLadderDownEast] remove BuildLadderDownEast