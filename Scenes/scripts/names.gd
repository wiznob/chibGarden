extends RichTextLabel
onready var save_file = SaveData.gameData
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	if(save_file.name  == "i"):
		hide()
	else:
		add_text(save_file.name)
		hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
