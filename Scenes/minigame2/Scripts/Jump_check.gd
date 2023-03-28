extends "res://Scenes/minigame2/Scripts/Player.gd"




func _on_Collide_body_entered(body):
	jumps_available += 2
