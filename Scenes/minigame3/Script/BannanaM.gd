extends "res://Scenes/minigame3/Script/ScrollMovement.gd.gd"

func _physics_process(delta):
	move()
	
var score = 0

func _on_Pickup_mouse_exited():

		Signals.emit_signal("rewardplayer",1)
		queue_free()



