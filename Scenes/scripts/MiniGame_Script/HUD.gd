extends Control

func _ready():
	$Label.text = "SCORE:" + String(Global.score)


func _on_Coin_collected():
	_ready()



func _on_settingsBTN_pressed():
	pass # Replace with function body.
