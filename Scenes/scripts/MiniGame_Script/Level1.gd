extends Node2D

var score = 0



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
	


func _on_Bird_enemy(body):
	if body.name == "Player":
		queue_free()
	











func _on_Bird_mouse_exited():
	queue_free()
