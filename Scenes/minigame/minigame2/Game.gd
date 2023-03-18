extends KinematicBody2D

export var speed:int=800
export var jumpforce:int=1600
export var gravity:int=4500
var velocity:Vector2=Vector2()

func _physics_process(delta):
	velocity.x=speed
	if Input.is_action_just_pressed("ui_up"):
		velocity.y -= jumpforce
	
	velocity.y=gravity * delta
	velocity.y=move_and_slide(velocity,Vector2.UP).y
	
