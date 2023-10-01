extends Node
#please work :)


const SAVE_FILE = "user://HighScore"
var gameData = {}

func _ready():
	load_data()
	
func testMode():
	var dir = Directory.new()
	dir.remove("user://HighScore")
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
			"save1":0,
			"save2":0,
			"save3":0
		}
		save_data()
	file.open(SAVE_FILE, File.READ)
	gameData = file.get_var()
	file.close()
