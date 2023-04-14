extends ProgressBar

onready var save_file = SaveData.gameData
func _ready():

	get_node("stamina").set_value(save_file.stamina)
