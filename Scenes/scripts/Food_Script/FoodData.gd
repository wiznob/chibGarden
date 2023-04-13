extends Node


const SAVE_FILE = "user://Food.save"
var gameData = {}

func _ready():
	load_data()

func save_data():
	var file = File.new()
	file.open(SAVE_FILE, file.WRITE)
	file.store_var(gameData)
	file.close()

func load_data():
	var file = File.new()
	if not file.file_exists(SAVE_FILE):
		gameData = {
			"applecount":0,
			"bananacount":0,
			"lemoncount":0,
			"mangocount":0,
			"orangecount":0,
			"enhancerBcount":0,
			"enhancerGcount":0,
			"enhancerPcount":0,
			"enhancerRcount":0,
			"enhancerYcount":0,
			"money":100
		}
		save_data()
	file.open(SAVE_FILE, File.READ)
	gameData = file.get_var()
	file.close()
