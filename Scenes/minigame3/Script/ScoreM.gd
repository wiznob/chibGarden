extends RichTextLabel

func _ready():
	Signals.connect("rewardplayer",self,"rewardplayer")

var score = 0
func rewardplayer(scoretoadd):
	score+=scoretoadd
	#Signals.emit_signal("rewardplayer",score)
	print(score)
	self.text = String(score)
	
