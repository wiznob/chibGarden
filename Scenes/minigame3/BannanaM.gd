extends "res://Scenes/minigame2/Scripts/ScrollMovement.gd"

func _physics_process(delta):

	move()
	

func _on_Pickup_body_entered(body):
	if body.name == "Player":
		Signals.emit_signal("rewardplayer",1)
		queue_free()

#self.position.y-=scroll_speed
