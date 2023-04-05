extends "res://Scenes/minigame3/Script/ScrollMovement.gd.gd"

func _ready():
	Signals.connect("killplayer",self,"gameover")
	Signals.connect("rewardplayer",self,"rewardplayer")




func _on_Timer_timeout():

	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/End.hide()
	else:
		get_tree().paused = true
		$UI/End.show()
	


func _on_RestartBtn_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false
