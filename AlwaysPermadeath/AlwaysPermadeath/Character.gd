extends "res://Scripts/Character.gd"

func Death():

    if gameData.flycam:
        return

    PlayDeathAudio()
    audio.breathing.stop()
    audio.heartbeat.stop()
    gameData.health = 0
    gameData.isDead = true
    gameData.freeze = true
    weapons.ClearWeapons()

    Loader.ResetSave()
    print("DEATH: Permadeath")

    Loader.LoadScene("Death")
