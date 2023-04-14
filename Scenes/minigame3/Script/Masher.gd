extends "res://Scenes/minigame3/Script/ScrollMovement.gd.gd"
onready var save_file = SaveData.gameData

func _ready():
	Signals.connect("killplayer",self,"gameover")
	Signals.connect("rewardplayer",self,"rewardplayer")
	get_node("stamina").set_value(save_file.stamina)
	





func _on_Timer_timeout():

	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/End.hide()
	else:
		get_tree().paused = true
		$UI/End.show()
	


func _on_RestartBtn_pressed():
	get_tree().paused = false
	var decrease = save_file.stamina - 10
	save_file.stamina = decrease
	if(save_file.stamina < 0):
		var reset = 0
		save_file.stamina = reset
		SaveData.save_data()
	get_tree().reload_current_scene()
	get_tree().paused = false
	


func _on_shopBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/shopPopUP.hide()
	else:
		get_tree().paused = true
		$UI/shopPopUP.show()


func _on_gamesBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/MiniGamesPopUp.hide()
	else:
		get_tree().paused = true
		$UI/MiniGamesPopUp.show()


func _on_settingsBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/Settingspopup.hide()
	else:
		get_tree().paused = true
		$UI/Settingspopup.show()


func _on_graveBTN_pressed():
	get_tree().change_scene("res://Scenes/graveYard.tscn")
