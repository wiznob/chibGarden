extends Button
onready var save_file = SaveData.gameData


func _on_ChibSearch_pressed():
	get_tree().paused = false
	var decrease = save_file.stamina - 10
	save_file.stamina = decrease
	if(save_file.stamina < 0):
		var reset = 0
		save_file.stamina = reset
		SaveData.save_data()
	SaveData.save_data()
	get_tree().change_scene("res://Scenes/minigame/Level1.tscn")
	


func _on_ChibRacing_pressed():
	get_tree().paused = false
	var decrease = save_file.stamina - 10
	save_file.stamina = decrease
	if(save_file.stamina < 0):
		var reset = 0
		save_file.stamina = reset
		SaveData.save_data()
	get_tree().change_scene("res://Scenes/minigame2/EndGame.tscn")
	
	


func _on_ChibKarate_pressed():
	get_tree().change_scene("res://Scenes/minigame3/Masher.tscn")
