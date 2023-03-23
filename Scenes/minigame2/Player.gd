extends KinematicBody2D



var velocity = Vector2.ZERO

export var jump_velocity = 1500.0
export var gravity_scale = 20.0
var can_jump: bool = true

var score = 0

onready var animation = $AnimatedSprite


func _ready():
	Signals.connect("killplayer",self,"killplayer")
	Signals.connect("rewardplayer",self,"rewardplayer")


func _physics_process(delta):
	velocity.y += gravity_scale	
	move_and_collide(velocity*delta)
		
func _input(event):
	velocity = Vector2.ZERO
	if can_jump:
		if event.is_action_pressed("jump"):
			velocity.y-=jump_velocity
			animation.play("Jump")




func _on_Area2D_body_entered(body):
		if body is StaticBody2D:
			print("floor detected")
			can_jump = true
		

   

func _on_Area2D_body_exited(body):
	if body is StaticBody2D:
		print("Left")
		can_jump = false

func killplayer():
	queue_free()


	
	
func rewardplayer(scoretoadd):
	score+=scoretoadd
	Signals.emit_signal("updatescore",score)
