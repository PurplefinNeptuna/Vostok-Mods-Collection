extends "res://Scripts/Compiler.gd"

func Spawn():
	super()
	var map = get_tree().current_scene.get_node("/root/Map")
	var scene = map.mapName
	if scene != "Tutorial" && scene != "Radar":
		gameData.tutorial = false
		gameData.shelter = false
		gameData.permadeath = true
		PlayVostokEnter()
		print("Permadeath Enabled")
	else:
		print("Not a playable map")