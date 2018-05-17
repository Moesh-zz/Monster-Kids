tp @e[type=bat,name=cursorFindSpawner] ~ ~-1 ~
scoreboard players remove @e[type=bat,name=cursorFindSpawner] moveY 1
execute @e[type=bat,name=cursorFindSpawner,score_moveY_min=1,score_moveX=0] ~ ~ ~ scoreboard players set @s moveX 94
execute @e[type=bat,name=cursorFindSpawner,score_moveY_min=1,score_moveZ=0] ~ ~ ~ scoreboard players set @s moveZ 94