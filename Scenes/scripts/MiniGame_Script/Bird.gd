extends KinematicBody2D

var speed = 150
var direction = 1
var velocity = Vector2()
var collision

func _physics_process(delta):
	collision=move_and_collide(velocity*delta)

	if collision:
		collision.collider.get_node("Label").visible=true


