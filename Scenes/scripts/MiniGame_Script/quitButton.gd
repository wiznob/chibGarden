extends Button

onready var save_file = SaveData.gameData

func _on_quitButton_pressed():
	$Settingspopup.hide()
	get_tree().paused = false


func _on_Bird_body_entered(body):
	get_tree().paused = false
	var decrease = save_file.stamina - 10
	save_file.stamina = decrease
	if(save_file.stamina < 0):
		var reset = 0
		save_file.stamina = reset
		SaveData.save_data()
	get_tree().reload_current_scene()
	get_tree().paused = false
	if body.name == "Player":
	
			#Players can still unpause
			$"../../../DeathPopUp".show()
			get_tree().paused = true
		


func _on_RestartBtn_pressed():

	get_tree().reload_current_scene()
	get_tree().paused = false
	#score = 0
	$"../../../HUD/Label".text = "SCORE:" + String(Global.score)
	
