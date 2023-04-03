extends Node2D

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

	get_tree().change_scene("res://Scenes/minigame/Level3.tscn")


func _on_FSwitch_body_entered(body):
	if $FSwitch/AnimatedSprite.frame == 1:
		$FSwitch/AnimatedSprite.frame = 0



func _on_Bird_body_entered(body):
	if body.name == "Player":
	
			#Players can still unpause
			$UI/DeathPopUp.show()
			get_tree().paused = false
			

	
