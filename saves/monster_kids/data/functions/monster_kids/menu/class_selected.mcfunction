scoreboard players tag @a[score_classSelected_min=1] remove ClassElytra
scoreboard players tag @a[score_classSelected_min=1] remove ClassPearl
scoreboard players tag @a[score_classSelected_min=1] remove ClassLadder

# Flag player to be added to team if not on team
scoreboard players tag @a[score_classSelected_min=1,score_classSelected=1] add chooseElytra
scoreboard players tag @a[score_classSelected_min=2,score_classSelected=2] add choosePearl
scoreboard players tag @a[score_classSelected_min=3,score_classSelected=3] add chooseLadder
scoreboard players set @a[score_classSelected_min=1] classSelected 0
scoreboard players enable @a classSelected

scoreboard players tag @a[tag=chooseElytra] add ClassElytra
scoreboard players tag @a[tag=choosePearl] add ClassPearl
scoreboard players tag @a[tag=chooseLadder] add ClassLadder

# PLAYER choose class
execute @a[tag=chooseElytra] ~ ~ ~ tellraw @a[tag=!chooseElytra] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=chooseElytra]"}, {"translate":"mk.class.elytra", "color":"light_purple"} ] }
execute @a[tag=choosePearl] ~ ~ ~ tellraw @a[tag=!choosePearl] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=choosePearl]"}, {"translate":"mk.class.pearl", "color":"light_purple"} ] }
execute @a[tag=chooseLadder] ~ ~ ~ tellraw @a[tag=!chooseLadder] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=chooseLadder]"}, {"translate":"mk.class.ladder", "color":"light_purple"} ] }

# Descriptions
tellraw @a[tag=chooseElytra] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.elytra.description"}]}
tellraw @a[tag=choosePearl] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.pearl.description"}]}
tellraw @a[tag=chooseLadder] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.ladder.description"}]}

scoreboard players tag @a[tag=chooseElytra] remove chooseElytra
scoreboard players tag @a[tag=choosePearl] remove choosePearl
scoreboard players tag @a[tag=chooseLadder] remove chooseLadder