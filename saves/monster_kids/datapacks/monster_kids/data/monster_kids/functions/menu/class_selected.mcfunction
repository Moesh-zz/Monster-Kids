# Leave previous class
tag @a[tag=ClassElytra,scores={classSelected=1..}] remove ClassElytra
tag @a[tag=ClassPearl,scores={classSelected=1..}] remove ClassPearl
tag @a[tag=ClassLadder,scores={classSelected=1..}] remove ClassLadder

# Players cannot select a kit until they have joined a team
tag @a[team=lobby,scores={classSelected=1..}] add MustSelectTeam
scoreboard players set @a[tag=MustSelectTeam] classSelected 0
scoreboard players enable @a[tag=MustSelectTeam] classSelected
tellraw @a[tag=MustSelectTeam] {"translate":"mk.class.noteam","color":"red"}
scoreboard players tag @a[tag=MustSelectTeam] remove MustSelectTeam

# Transfer trigger to tag and reset trigger
tag @a[scores={classSelected=1}] add selectedElytra
tag @a[scores={classSelected=2}] add selectedPearl
tag @a[scores={classSelected=3}] add selectedLadder
tag @a[tag=selectedElytra] add ClassElytra
tag @a[tag=selectedPearl] add ClassPearl
tag @a[tag=selectedLadder] add ClassLadder
scoreboard players set @a[scores={classSelected=1..}] classSelected 0
scoreboard players enable @a classSelected

# Announce player choice to server
execute as @a[tag=selectedElytra] run tellraw @a[tag=!selectedElytra] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=selectedElytra]"}, {"translate":"mk.class.elytra", "color":"light_purple"} ] }
execute as @a[tag=selectedPearl] run tellraw @a[tag=!selectedPearl] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=selectedPearl]"}, {"translate":"mk.class.pearl", "color":"light_purple"} ] }
execute as @a[tag=selectedLadder] run tellraw @a[tag=!selectedLadder] {"translate":"mk.class.selected", "with":[{"selector":"@a[tag=selectedLadder]"}, {"translate":"mk.class.ladder", "color":"light_purple"} ] }

# Announce class description to player
tellraw @a[tag=selectedElytra] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.elytra.description"}]}
tellraw @a[tag=selectedPearl] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.pearl.description"}]}
tellraw @a[tag=selectedLadder] {"translate":"mk.class","color":"gray","italic":true,"with":[{"translate":"mk.class.ladder.description"}]}

# Reset
tag @a[tag=selectedElytra] remove selectedElytra
tag @a[tag=selectedPearl] remove selectedPearl
tag @a[tag=selectedLadder] remove selectedLadder