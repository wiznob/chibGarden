extends Node
onready var save_file = SaveData.gameData




# Called when the node enters the scene tree for the first time.


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


func _ready():
	print(save_file.name)


func _on_LineEdit_text_entered(new_text):
	var check = save_file.name
	print(check)
	if(check == "i"):
		save_file.name = new_text
		SaveData.save_data()
		print(save_file.name)
	


	
		
		
