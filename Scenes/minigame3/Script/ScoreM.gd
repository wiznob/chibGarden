extends RichTextLabel
onready var save_file = HighScore.gameData



func _ready():
	Signals.connect("rewardplayer",self,"rewardplayer")
	

var score = 0
func rewardplayer(scoretoadd):
	score+=scoretoadd
	#Signals.emit_signal("rewardplayer",score)
	print(score)
	self.text = String(score)
	if(score > save_file.save2):
		save_file.save2 = score
		HighScore.save_data()
		$"../../UI/End/VBoxContainer/Label".text = String(save_file.save2)
	
