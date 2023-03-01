extends Node2D

var score = 0



func _on_Switch_body_entered(body):
	if $Switch/AnimatedSprite.frame == 1:
		$Switch/AnimatedSprite.frame = 0
		$Door/AnimationPlayer.play("SlideUp")






func _on_Area2D_body_exited(body):

	get_tree().change_scene("res://Scenes/Menu.tscn")
