extends Control
onready var save_file = SaveData.gameData



func _ready():
	Signals.connect("killplayer",self,"gameover")

	


func _on_Button_pressed():
	get_tree().paused = false
	var decrease = save_file.stamina - 10
	save_file.stamina = decrease
	if(save_file.stamina < 0):
		var reset = 0
		save_file.stamina = reset
		SaveData.save_data()
	get_tree().reload_current_scene()
	get_tree().paused = false
	


func gameover():
	self.show()

	
	
