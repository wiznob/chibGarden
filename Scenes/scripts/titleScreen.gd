extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_playButton_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
	get_tree().paused = false
	
	




func _on_pauseButton_pressed():
	get_tree().paused = true


func _on_quitButton_pressed():
	get_tree().quit()



#func _on_optionButton_pressed():
	#get_tree().change_scene(whatever option is called when done)





func _on_LineEdit_text_entered(new_text):
	var chibName = new_text
	print(chibName)
