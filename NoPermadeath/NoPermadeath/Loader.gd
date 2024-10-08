extends "res://Scripts/Loader.gd"

func LoadScene(scene: String):
    FadeInLoading()
	HideCursor()
	gameData.freeze = true

	if scene == "Menu":
		scenePath = Menu
		label.hide()
	elif scene == "Death":
		scenePath = Death
		label.hide()
	elif scene == "Tutorial":
		scenePath = Tutorial
		gameData.shelter = false
		gameData.permadeath = false
		gameData.tutorial = true
		label.show()
	elif scene == "Village":
		scenePath = Village
		gameData.shelter = false
		gameData.permadeath = false
		gameData.tutorial = false
		label.show()
	elif scene == "Shipyard":
		scenePath = Shipyard
		gameData.shelter = false
		gameData.permadeath = false
		gameData.tutorial = false
		label.show()
	elif scene == "Highway":
		scenePath = Highway
		gameData.shelter = false
		gameData.permadeath = false
		gameData.tutorial = false
		label.show()
	elif scene == "Minefield":
		scenePath = Minefield
		gameData.shelter = false
		gameData.permadeath = false
		gameData.tutorial = false
		label.show()
	elif scene == "Radar":
		scenePath = Radar
		gameData.shelter = false
		gameData.permadeath = false
		gameData.tutorial = false
		label.show()
	elif scene == "Attic":
		scenePath = Attic
		gameData.shelter = true
		gameData.permadeath = false
		gameData.tutorial = false
		label.show()

	if label.visible && !gameData.flycam:
		label.text = "Loading " + scene + "..."
	elif label.visible && gameData.flycam:
		label.text = "Loading " + scene + " (Flycam)" + "..."

	await get_tree().create_timer(2.0).timeout;
	get_tree().change_scene_to_file(scenePath)