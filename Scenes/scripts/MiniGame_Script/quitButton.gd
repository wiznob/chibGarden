extends Button



func _on_quitButton_pressed():
	$Settingspopup.hide()
	get_tree().paused = false
