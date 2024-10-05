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


    if !gameData.shelter && !gameData.tutorial:
        Loader.ResetGear()
        print("DEATH: Standard")


    if gameData.shelter:
        Loader.ResetGear()
        Loader.SaveShelter()
        print("DEATH: Shelter")

    Loader.LoadScene("Death")
