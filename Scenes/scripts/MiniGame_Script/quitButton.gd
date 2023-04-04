extends Button



func _on_quitButton_pressed():
	$Settingspopup.hide()
	get_tree().paused = false


func _on_Bird_body_entered(body):
		if body.name == "Player":
	
			#Players can still unpause
			$"../../../DeathPopUp".show()
			get_tree().paused = true


func _on_RestartBtn_pressed():

	get_tree().reload_current_scene()
	get_tree().paused = false
	#score = 0
	$"../../../HUD/Label".text = "SCORE:" + String(Global.score)
	
