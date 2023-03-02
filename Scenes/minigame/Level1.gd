extends Node2D

var score = 0



func _on_Switch_body_entered(body):
	if $Switch/AnimatedSprite.frame == 1:
		$Switch/AnimatedSprite.frame = 0
		$Door/AnimationPlayer.play("SlideUp")



func _on_settingsBTN_pressed():
	get_tree().paused = true
	$Settingspopup.show()


func _on_Area2D_body_exited(body):

	get_tree().change_scene("res://Scenes/minigame/Level2.tscn")


func _on_backButton_pressed():
		$Settingspopup.hide()
		get_tree().paused = false
	


func _on_quitButton_pressed():
	get_tree().quit()
