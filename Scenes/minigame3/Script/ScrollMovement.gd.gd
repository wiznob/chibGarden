extends Node

export var scroll_speed = 8.0

func _ready():
	pass # Replace with function body.

func move():

	self.position.y+=scroll_speed
