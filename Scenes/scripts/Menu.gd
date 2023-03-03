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
	get_tree().paused = true
	$Settingspopup.show()

#Tempoary hopfully 
func _on_backsButton_pressed():
		$Settingspopup.hide()
		get_tree().paused = false
	
#	 if get_tree().paused == false:
#			get_tree().paused = true 
#	 else:
#			get_tree().paused = false
	#get_tree().change_scene("res://Scenes/SettingsGUI.tscn")

#func _on_feedBTN_pressed():
#	get_parent().add_child(newFood)
func _on_feedBTN_pressed():
	get_tree().change_scene("res://Scenes/feeding.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_gamesBTN_pressed():
	get_tree().paused = true
	$MiniGamesPopUp.show()


func _on_shopBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$shopPopUP.hide()
	else:
		get_tree().paused = true
		$shopPopUP.show()


func _on_item1_pressed():
	print("green pressed") # Replace with function body.
