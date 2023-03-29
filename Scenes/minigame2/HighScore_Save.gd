extends "res://Scenes/minigame2/Scripts/ScoreUI.gd"
onready var save_file = HighScore.gameData

func _ready():
	print(save_file.save1)
	self.text = String(save_file.save1)
	Signals.connect("updatescore",self,"updatescore")

func updatescore(score):
	var one = save_file.save1 
	print(score)
	print(one)
	#var one = 5 
	#one += 1
	#save_file.save1  = one
	
	if(score > one):
		save_file.save1= score
		HighScore.save_data()
		self.text = String(save_file.save1)
	
	
	
	

	
	


