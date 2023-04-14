extends Node2D



onready var save_file = SaveData.gameData
var score = 0
func _ready():
	Signals.connect("killplayer",self,"gameover")
	Signals.connect("rewardplayer",self,"rewardplayer")

	





func _on_Switch_body_entered(body):
	if $Switch/AnimatedSprite.frame == 1:
		$Switch/AnimatedSprite.frame = 0
		$Door/AnimationPlayer.play("SlideUp")



func _on_settingsBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/Settingspopup.hide()
#Players can still unpause
	else:
		get_tree().paused = true
		$UI/Settingspopup.show()


func _on_Area2D_body_exited(body):

	get_tree().change_scene("res://Scenes/minigame/Level2.tscn")


func _on_backButton_pressed():
		$Settingspopup.hide()
		get_tree().paused = false
	















func _on_shopBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/shopPopUP.hide()
		$CanvasLayer.show()
	else:
		get_tree().paused = true
		$UI/shopPopUP.show()
		$CanvasLayer.hide()


func _on_graveBTN_pressed():
	get_tree().change_scene("res://Scenes/graveYard.tscn")


func _on_gamesBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$UI/MiniGamesPopUp.hide()
	else:
		get_tree().paused = true
		$UI/MiniGamesPopUp.show()
