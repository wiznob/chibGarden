extends Node2D

var obstacle=preload("res://Scenes/minigame/minigame2/Obstacle.tscn")

var max_obstacle = 1000

func _ready() -> void:
	for i in range(max_obstacle):
		var Obstacle_scene=obstacle.instance()
		Obstacle_scene.global_position=Vector2(9072*(i+1),600)
		$Obstacle_container.add_child(Obstacle_scene)
