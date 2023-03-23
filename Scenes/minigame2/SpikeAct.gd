extends "res://Scenes/minigame2/ScrollMovement.gd"

func _physics_process(delta):
	move()
	
func _on_Obstacle_body_entered(body):
	if body.name == "Player":
		queue_free()
		Signals.emit_signal("killplayer")
