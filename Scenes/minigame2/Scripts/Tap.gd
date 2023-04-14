extends Node2D




func _input(event):
	if event is InputEventScreenTouch or event is InputEventScreenDrag:
		if $TouchScreenButton.is_pressed():
			Signals.emit_signal("jump")
