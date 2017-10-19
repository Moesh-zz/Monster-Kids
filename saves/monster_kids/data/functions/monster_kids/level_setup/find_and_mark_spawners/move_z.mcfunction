tp @e[type=bat,name=cursorFindSpawner] ~ ~ ~1
scoreboard players remove @e[type=bat,name=cursorFindSpawner] moveZ 1
execute @e[type=bat,name=cursorFindSpawner,score_moveX=0] ~ ~ ~ scoreboard players set @s moveX 94
execute @e[type=bat,name=cursorFindSpawner,score_moveZ=0] ~ ~ ~ tp @s ~ ~ ~-94
