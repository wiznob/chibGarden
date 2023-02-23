extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_settingsBTN_pressed():
	 if get_tree().paused == false:
			get_tree().paused = true 
	 else:
			get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
