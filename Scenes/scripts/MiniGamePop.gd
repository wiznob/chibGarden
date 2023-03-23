extends Button



func _on_ChibSearch_pressed():
	get_tree().change_scene("res://Scenes/minigame/Level1.tscn")
	get_tree().paused = false
	


func _on_ChibRacing_pressed():
	get_tree().change_scene("res://Scenes/minigame2/EndGame.tscn")
	get_tree().paused = false
	
