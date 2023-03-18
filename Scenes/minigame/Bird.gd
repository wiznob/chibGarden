extends KinematicBody2D

var speed = 150
var direction = 1
var velocity = Vector2()

func _physics_process(delta):
	
	velocity.x = speed * direction
	move_and_slide(velocity)
	if is_on_wall():
		direction = direction * -1
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		velocity.x = speed * direction
	


