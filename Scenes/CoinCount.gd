extends Label





onready var save_files = FoodData.gameData
func _ready():
	self.text = String(save_files.money)
	#Signals.connect("updatescore",self,"updatescore")

