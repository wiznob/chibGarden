extends "res://Scenes/minigame2/Scripts/Player.gd"

var speed = 150
var direction = 1
var velocitys = Vector2()
var collision

func _physics_process(delta):
	if is_on_wall():
		direction = direction * - 1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
	velocitys.x = speed * direction
	#collision=move_and_collide(velocity*delta)
	move_and_slide(velocity, Vector2.UP)







func _on_Collide_body_entered(body):
		if body.name == "Player":
			print("floor detected")

			queue_free()
