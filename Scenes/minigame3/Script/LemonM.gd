extends "res://Scenes/minigame3/Script/ScrollMovement.gd.gd"

func _physics_process(delta):
	move()
	

func _on_Pickup_mouse_exited():

		Signals.emit_signal("rewardplayer",1)
		queue_free()
