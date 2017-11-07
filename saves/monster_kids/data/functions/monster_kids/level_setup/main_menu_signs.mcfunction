# This function is never loaded.
# It is only used to update signed placed in the main menu

# Select Team
blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.joinTeam.blue1\"}",
	Text2: "{\"translate\":\"mk.joinTeam.blue2\"}",
	Text3: "{
		\"translate\":\"mk.joinTeam.blue3\",
		\"color\":\"blue\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger teamSelected set 1\"
		}
	}",

	Text4: "{\"translate\":\"mk.joinTeam.blue4\"}"
}

blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.joinTeam.red1\"}",
	Text2: "{\"translate\":\"mk.joinTeam.red2\"}",
	Text3: "{
		\"translate\":\"mk.joinTeam.red3\",
		\"color\":\"red\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger teamSelected set 2\"
		}
	}",

	Text4: "{\"translate\":\"mk.joinTeam.red4\"}"
}

# Select Class
blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.selectClass.elytra1\"}",
	Text2: "{\"translate\":\"mk.selectClass.elytra2\"}",
	Text3: "{
		\"translate\":\"mk.selectClass.elytra3\",
		\"color\":\"light_purple\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger classSelected set 1\"
		}
	}",

	Text4: "{\"translate\":\"mk.selectClass.elytra4\"}"
}

blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.selectClass.pearl1\"}",
	Text2: "{\"translate\":\"mk.selectClass.pearl2\"}",
	Text3: "{
		\"translate\":\"mk.selectClass.pearl3\",
		\"color\":\"light_purple\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger classSelected set 2\"
		}
	}",

	Text4: "{\"translate\":\"mk.selectClass.pearl4\"}"
}

blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.selectClass.ladder1\"}",
	Text2: "{\"translate\":\"mk.selectClass.ladder2\"}",
	Text3: "{
		\"translate\":\"mk.selectClass.ladder3\",
		\"color\":\"light_purple\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger classSelected set 3\"
		}
	}",

	Text4: "{\"translate\":\"mk.selectClass.ladder4\"}"
}

blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.selectClass.nothing1\"}",
	Text2: "{\"translate\":\"mk.selectClass.nothing2\"}",
	Text3: "{
		\"translate\":\"mk.selectClass.nothing3\",
		\"color\":\"light_purple\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger classSelected set 4\"
		}
	}",

	Text4: "{\"translate\":\"mk.selectClass.nothing4\"}"
}

# Start Game
blockdata ~ ~ ~ {
	Text1: "{\"translate\":\"mk.sign.startRound1\"}",
	Text2: "{\"translate\":\"mk.sign.startRound2\"}",
	Text3: "{
		\"translate\":\"mk.sign.startRound3\",
		\"color\":\"light_purple\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger startRound set 1\"
		}
	}",

	Text4: "{\"translate\":\"mk.sign.startRound4\"}"
}

# Spectate
blockdata 127 53 3203 {
	Text1: "{\"translate\":\"mk.sign.spectate1\"}",
	Text2: "{\"translate\":\"mk.sign.spectate2\"}",
	Text3: "{
		\"translate\":\"mk.sign.spectate3\",
		\"color\":\"light_purple\",
		\"clickEvent\":{
			\"action\":\"run_command\",
			\"value\":\"/trigger spectate set 1\"
		}
	}",

	Text4: "{\"translate\":\"mk.sign.spectate4\"}"
}