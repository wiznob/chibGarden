extends RichTextLabel

onready var save_file = HighScore.gameData

func _ready():
	print(save_file.save2)
	self.text = String(save_file.save2)
	#Signals.connect("updatescore",self,"updatescore")
	Signals.connect("rewardplayer",self,"rewardplayer")

var score = 0
func rewardplayer(scoretoadd):
	score+=scoretoadd
	#Signals.emit_signal("rewardplayer",score)
	print(score)
	self.text = String(save_file.save2)
	
	
	var one = save_file.save2
	print(score)
	print(one)
	#var one = 5 
	#one += 1
	#save_file.save1  = one
	
	if(one < score):
		save_file.save2= score
		HighScore.save_data()
		self.text = String(save_file.save2)
