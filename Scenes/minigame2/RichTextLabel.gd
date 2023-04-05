extends "res://Scenes/minigame2/Scripts/ScoreUI.gd"

func _ready():
	self.text = String(save_file.save1)
	Signals.connect("updatescore",self,"updatescore")


func updatescore(score):
	
	
	
	var number = save_file.save1


	
	if(score > number):
		save_file.save1 == score
		SaveData.save_data()
		self.text = String(save_file.save1)
		print(score)



