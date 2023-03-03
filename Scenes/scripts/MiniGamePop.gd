extends Button



func _on_ChibSearch_pressed():
	get_tree().change_scene("res://Scenes/minigame/Level1.tscn")
	get_tree().paused = false
	
