extends Label


onready var save_file = HighScore.gameData

func _ready():
	self.text = String(save_file.save2)
	#Signals.connect("updatescore",self,"updatescore")
	Signals.connect("rewardplayer",self,"rewardplayer")



