extends Node

const SAVE_FILE = "user://player.save"
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
		gameData = {# values a new chib will start at (might have to delete save to see changes)
			"name": "i",
			"hunger":100,
			"stamina":100,
			"strength":100,
			"happiness":100,
			"age":30
		}
		save_data()
	file.open(SAVE_FILE, File.READ)
	gameData = file.get_var()
	file.close()
