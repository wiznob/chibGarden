extends Control
onready var save_file = SaveData.gameData

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_quitButton_pressed():
	get_tree().quit()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#We want to reuse this script so we also want the back button working here.
func _on_backButton_pressed():
	pass
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Menu.tscn")

	#$MiniGamesPopUp.hide()
	#get_tree().paused = false
	#$Settingspopup.hide()
	#get_tree().paused = false




#audio handeling
var master_bus = AudioServer.get_bus_index("Master")
var music_bus = AudioServer.get_bus_index("Music")

func _on_SFXSlider_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus, value)
	
	if value == -30:
		AudioServer.set_bus_mute(master_bus, true)
	else:
		AudioServer.set_bus_mute(master_bus, false)

func _on_MusicSlider_value_changed(value):
	AudioServer.set_bus_volume_db(music_bus, value)
	
	if value == -30:
		AudioServer.set_bus_mute(music_bus, true)
	else:
		AudioServer.set_bus_mute(music_bus, false)





func _on_Back_pressed():
	$MiniGamesPopUp.hide()
	get_tree().paused = false
	#$Settingspopup.hide()

func _on_saveButton_pressed():
	SaveData.save_data()


func _on_RestartBtn_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false
