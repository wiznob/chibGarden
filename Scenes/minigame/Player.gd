extends KinematicBody2D

var speed = 200


func _physics_process(_delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity* speed)


func _on_CanvasLayer_use_move_vector(move_vector):
	move_and_slide(move_vector * 128)
	
	
