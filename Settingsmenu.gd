extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_quitButton_pressed():
	get_tree().quit()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Back_pressed():
	pass # Replace with function body.


func _on_Save_pressed():
	pass # Replace with function body.

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
