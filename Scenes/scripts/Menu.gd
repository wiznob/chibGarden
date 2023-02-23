extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var food = load("res://Scenes/Food.tscn")
var newFood = food.instance()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_settingsBTN_pressed():
#	 if get_tree().paused == false:
#			get_tree().paused = true 
#	 else:
#			get_tree().paused = false
	get_tree().change_scene("res://Scenes/SettingsGUI.tscn")

func _on_feedBTN_pressed():
	get_parent().add_child(newFood)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
