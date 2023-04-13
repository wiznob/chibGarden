extends "res://Scenes/minigame3/Script/ScrollMovement.gd.gd"

func _physics_process(delta):
	move()
	

func _input(event):
	if event is InputEventScreenTouch or event is InputEventScreenDrag:
		if $TouchScreenButton.is_pressed():
			Signals.emit_signal("rewardplayer",1)
			queue_free()
