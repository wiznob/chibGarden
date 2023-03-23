extends Node

export (PackedScene) var Enemy
var score

func _ready():
	randomize()


func game_over():
	$Score_Timer.stop()
	$Enemy_Timer.stop()
	$HUD.show_game_over()


func new_game():
	score = 0
	$Chib_User.start($Start_Position.position)
	$Start_Timer.start()
	$HUD.update_score(score)
	$HUD.show_message("Get Ready")

func _on_Enemy_Timer_timeout():
		# Choose a random location on Path2D.
	$Enemy_Path/Enemy_Spawn.set_offset(randi())
	# Create a Mob instance and add it to the scene.
	var enemy = Enemy.instance()
	add_child(enemy)
	# Set the mob's direction perpendicular to the path direction.
	var direction = $Enemy_Path/Enemy_Spawn.rotation + PI / 2
	# Set the mob's position to a random location.
	enemy.position = $Enemy_Path/Enemy_Spawn.position
	# Add some randomness to the direction.
	direction += rand_range(-PI / 4, PI / 4)
	enemy.rotation = direction
	# Choose the velocity.
	enemy.set_linear_velocity(Vector2(rand_range(enemy.min_speed, enemy.max_speed), 0).rotated(direction))


func _on_Start_Timer_timeout():
	$Enemy_Timer.start()
	$Score_Timer.start()


func _on_Score_Timer_timeout():
   score += 1
   $HUD.update_score(score)
