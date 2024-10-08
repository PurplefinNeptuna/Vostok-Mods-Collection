extends "res://Scripts/Compiler.gd"

func Spawn():
	super()
	var map = get_tree().current_scene.get_node("/root/Map")
	var scene = map.mapName
	if scene == "Radar":
		gameData.tutorial = false
		gameData.shelter = false
		gameData.permadeath = false
		print("Radar permadeath disabled")
	else:
		print("Not Radar map")
