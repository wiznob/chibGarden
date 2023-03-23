extends RigidBody2D

export (int) var min_speed # Minimum speed range.
export (int) var max_speed # Maximum speed range.

#
	
	
	

func _on_Visibility_screen_exited():
	queue_free()
