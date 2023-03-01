extends PopupPanel


func _on_BackButton_pressed():
	$MiniGamesPopUp.hide()
	get_tree().paused = false
