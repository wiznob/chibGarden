extends KinematicBody2D



var velocity = Vector2.ZERO

export var jump_velocity = 500.0
export var gravity_scale = 20.0

var score = 0



func _ready():
	Signals.connect("killplayer",self,"killplayer")
	Signals.connect("rewardplayer",self,"rewardplayer")
	Signals.connect("jump",self,"jump")


func _physics_process(delta):
	velocity.y += gravity_scale	
	move_and_collide(velocity*delta)
		
func jump():
	velocity = Vector2.ZERO
	velocity.y-=jump_velocity
		
			#if is_on_floor() :
				#jumps_available +=1





func _on_Area2D_body_entered(body):
		if body is StaticBody2D:
			print("floor detected")

		

   

func _on_Area2D_body_exited(body):
	if body is StaticBody2D:
		print("Left")


func killplayer():
	queue_free()



	
	
func rewardplayer(scoretoadd):
	score+=scoretoadd
	Signals.emit_signal("updatescore",score)







