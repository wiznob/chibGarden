extends KinematicBody2D

export (int) var speed = 1800

var velocity = Vector2()

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2()
	if Input.is_action_pressed("down"):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_action_pressed("up"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)


func _on_KinematicBody2D_mouse_entered():
	print("Assulted")

#timer attempt 
var timer = Timer.new()

func _ready():
	timer.connect("timeout",self,"do_this")
	timer.wait_time = 3
	timer.one_shot = true
	add_child(timer)
	timer.start()

func do_this():
	self.queue_free()
	
	
	
