
extends "res://Scenes/minigame2/Scripts/ScrollMovement.gd"
onready var save_file = SaveData.gameData


func _ready():
	Signals.connect("killplayer",self,"gameover")
	get_node("stamina").set_value(save_file.stamina)
	

	#get_tree().paused = true
#func gameover():

#	get_tree().paused = true


	
func _on_settingsBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/Settingspopup.hide()
#Players can still unpause
	else:
		get_tree().paused = true
		$UI/Settingspopup.show()


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



func _on_graveBTN_pressed():
	get_tree().change_scene("res://Scenes/graveYard.tscn")
