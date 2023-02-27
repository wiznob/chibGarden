extends Node2D



func _on_Switch_body_entered(body):
	if $Switch/AnimatedSprite.frame == 1:
		$Switch/AnimatedSprite.frame = 0
		$Door/AnimationPlayer.play("SlideUp")
