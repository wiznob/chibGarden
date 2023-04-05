extends Control
onready var fave_file = FoodData.gameData#fave_file = food save file


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
##removed because of actual hungerbar addition
#func _ready():
	#revove bellow line after the video and demonstration
	#get_node("hunger").set_value(hunger)
	
	#pass # Replace with function body.
func _on_settingsBTN_pressed():
	get_tree().paused = true
	$Settingspopup.show()

#Tempoary hopfully 
func _on_backsButton_pressed():
		$Settingspopup.hide()
		get_tree().paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_feedBTN_pressed():
	get_tree().change_scene("res://Scenes/feedingTscn.tscn.tscn")


	



func _on_gamesBTN_pressed():
	get_tree().paused = true
	$MiniGamesPopUp.show()


func _on_applebtn_pressed():
	var applele = fave_file.applecount -1
	fave_file.applecount = applele
	print(fave_file.applecount)
	SaveData.save_data()
	print(fave_file.applecount)
	print(applele)
	


func _on_lemonbtn_pressed():
	var lemonon = fave_file.lemoncount -1
	fave_file.lemoncount = lemonon
	print(fave_file.lemoncount)
	SaveData.save_data()
	print(fave_file.lemoncount)
	print(lemonon)


func _on_mangobtn_pressed():
	var mangogo = fave_file.mangocount -1
	fave_file.mangocount = mangogo
	print(fave_file.mangocount)
	SaveData.save_data()
	print(fave_file.mangocount)
	print(mangogo)


func _on_orangebtn_pressed():
	var orangege = fave_file.orangecount -1
	fave_file.orangecount = orangege
	print(fave_file.orangecount)
	SaveData.save_data()
	print(fave_file.orangecount)
	print(orangege)


func _on_bananabtn_pressed():
	#add_child_below_node(self,newFood)
	##get_parent().add_child(newFood)
	
	
	#get_node("stamina").set_value(save_file.save1)
	#var one = 5 
	#one += 1
	#save_file.save1  = one
	var bananana = fave_file.bananacount -1
	
	
	fave_file.bananacount = bananana
	print(fave_file.bananacount)
	SaveData.save_data()
	
	
	print(fave_file.bananacount)
	print(bananana)
	#get_node("stamina").set_value(save_file.bananacount)
	
	
	
	




##food code that put it on a timer then deleted it 
#var timer = Timer.new()
#func _on_TempFoodHolder_gui_input(event):
#	timer.connect("timeout",self,"do_this")
#	timer.wait_time = 3
#	timer.one_shot = true
#	add_child(timer)
#	timer.start()
#
#func do_this():
#	hunger = hunger +10
#	get_node("hunger").set_value(hunger)
