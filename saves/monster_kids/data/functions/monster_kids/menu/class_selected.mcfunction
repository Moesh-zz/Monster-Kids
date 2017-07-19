# Leave previous class
scoreboard players tag @a[tag=ClassElytra,score_classSelected_min=1] remove ClassElytra
scoreboard players tag @a[tag=ClassPearl,score_classSelected_min=1] remove ClassPearl
scoreboard players tag @a[tag=ClassLadder,score_classSelected_min=1] remove ClassLadder

# Players cannot select a kit until they have joined a team
scoreboard players tag @a[team=lobby,score_classSelected_min=1] add MustSelectTeam
scoreboard players set @a[tag=MustSelectTeam] classSelected 0
scoreboard players enable @a[tag=MustSelectTeam] classSelected
tellraw @a[tag=MustSelectTeam] {"translate":"mk.class.noteam","color":"red"}
scoreboard players tag @a[tag=MustSelectTeam] remove MustSelectTeam

# Transfer trigger to tag and reset trigger
scoreboard players tag @a[score_classSelected_min=1,score_classSelected=1] add selectedElytra
scoreboard players tag @a[score_classSelected_min=2,score_classSelected=2] add selectedPearl
scoreboard players tag @a[score_classSelected_min=3,score_classSelected=3] add selectedLadder
scoreboard players tag @a[tag=selectedElytra] add ClassElytra
scoreboard players tag @a[tag=selectedPearl] add ClassPearl
scoreboard players tag @a[tag=selectedLadder] add ClassLadder
scoreboard players set @a[score_classSelected_min=1] classSelected 0
scoreboard players enable @a classSelected

# Announce player choice to server
execute @a[tag=selectedElytra] ~ ~ ~ tellraw @a[tag=!selectedElytra] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=selectedElytra]"}, {"translate":"mk.class.elytra", "color":"light_purple"} ] }
execute @a[tag=selectedPearl] ~ ~ ~ tellraw @a[tag=!selectedPearl] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=selectedPearl]"}, {"translate":"mk.class.pearl", "color":"light_purple"} ] }
execute @a[tag=selectedLadder] ~ ~ ~ tellraw @a[tag=!selectedLadder] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=selectedLadder]"}, {"translate":"mk.class.ladder", "color":"light_purple"} ] }

# Announce class description to player
tellraw @a[tag=selectedElytra] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.elytra.description"}]}
tellraw @a[tag=selectedPearl] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.pearl.description"}]}
tellraw @a[tag=selectedLadder] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.ladder.description"}]}

# Reset
scoreboard players tag @a[tag=selectedElytra] remove selectedElytra
scoreboard players tag @a[tag=selectedPearl] remove selectedPearl
scoreboard players tag @a[tag=selectedLadder] remove selectedLadder