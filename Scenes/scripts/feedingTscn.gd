extends Control
onready var fave_file = FoodData.gameData#fave_file = food save file
onready var save_file = SaveData.gameData

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
##removed because of actual hungerbar addition
func _ready():
	$CoinContainer/CoinCount.set_text(str(fave_file.money))#(String(save_files.money))
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


	



func _on_gamesBTN_pressed():
	get_tree().paused = true
	$MiniGamesPopUp.show()


func _on_applebtn_pressed():
	if(fave_file.applecount > 0):
		var applele = fave_file.applecount -1
		var Hunger = save_file.hunger +20
		save_file.hunger = Hunger
		fave_file.applecount = applele
		print(fave_file.applecount)
		SaveData.save_data()
		FoodData.save_data()
		print(fave_file.applecount)
		print(applele)
		print(Hunger)
	else: pass


func _on_lemonbtn_pressed():
	if(fave_file.lemoncount > 0):
		var lemonon = fave_file.lemoncount -1
		var Hunger = save_file.hunger +15
		save_file.hunger = Hunger
		fave_file.lemoncount = lemonon
		print(fave_file.lemoncount)
		SaveData.save_data()
		FoodData.save_data()
		print(fave_file.lemoncount)
		print(lemonon)
	else: pass


func _on_mangobtn_pressed():
	if(fave_file.mangocount > 0):
		var mangogo = fave_file.mangocount -1
		var Hunger = save_file.hunger +30
		save_file.hunger = Hunger
		fave_file.mangocount = mangogo
		print(fave_file.mangocount)
		SaveData.save_data()
		FoodData.save_data()
		print(fave_file.mangocount)
		print(mangogo)
	else: pass


func _on_orangebtn_pressed():
	if(fave_file.orangecount > 0):
		var orangege = fave_file.orangecount -1
		var Hunger = save_file.hunger +70
		save_file.hunger = Hunger
		fave_file.orangecount = orangege
		print(fave_file.orangecount)
		SaveData.save_data()
		FoodData.save_data()
		print(fave_file.orangecount)
		print(orangege)
	else: pass


func _on_bananabtn_pressed():
	#add_child_below_node(self,newFood)
	##get_parent().add_child(newFood)
	#get_node("stamina").set_value(save_file.save1)
	#var one = 5 
	#one += 1
	#save_file.save1  = one
	if(fave_file.bananacount > 0):
		var bananana = fave_file.bananacount -1
		var Hunger = save_file.hunger +15
		save_file.hunger = Hunger
		fave_file.bananacount = bananana
		print(fave_file.bananacount)
		SaveData.save_data()
		FoodData.save_data()
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
#func do_this():
#	hunger = hunger +10
#	get_node("hunger").set_value(hunger)
	else: pass


func _on_feedBTN_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
	get_tree().paused = false 


func _on_graveBTN_pressed():
	get_tree().change_scene("res://Scenes/graveYard.tscn")
	get_tree().paused = false 


func _on_enhancerBbtn_pressed():
	if(fave_file.enhancerBcount > 0):
		var enhancerB = fave_file.enhancerBcount -1
		var Strength = save_file.strength +20
		save_file.strength = Strength
		fave_file.enhancerBcount = enhancerB
		print(fave_file.enhancerBcount)
		SaveData.save_data()
		FoodData.save_data()
		print(fave_file.enhancerBcount)
		print(enhancerB)
	else: pass


func _on_enhancerGbtn_pressed():
	if(fave_file.enhancerGcount > 0):
		var enhancerG = fave_file.enhancerGcount -1
		var Stamina = save_file.stamina +20
		save_file.stamina = Stamina
		fave_file.enhancerGcount = enhancerG
		print(fave_file.enhancerGcount)
		SaveData.save_data()
		print(fave_file.enhancerGcount)
		print(enhancerG)
	else: pass


func _on_enhancerPbtn_pressed():
	if(fave_file.enhancerPcount > 0):
		var enhancerP = fave_file.enhancerPcount -1
		var Happiness = save_file.happiness +20
		save_file.happiness = Happiness
		fave_file.enhancerPcount = enhancerP
		print(fave_file.enhancerPcount)
		SaveData.save_data()
		print(fave_file.enhancerPcount)
		print(enhancerP)
	else: pass


func _on_enhancerRbtn_pressed():
	if(fave_file.enhancerRcount > 0):
		var enhancerR = fave_file.enhancerRcount -1
		var Age = save_file.age -5
		save_file.age = Age
		fave_file.enhancerRcount = enhancerR
		print(fave_file.enhancerRcount)
		SaveData.save_data()
		print(fave_file.enhancerRcount)
		print(enhancerR)
	else: pass


func _on_enhancerYbtn_pressed():
	if(fave_file.enhancerYcount > 0):
		var enhancerY = fave_file.enhancerYcount -1
		var Stamina = save_file.stamina +10
		save_file.stamina = Stamina
		fave_file.enhancerYcount = enhancerY
		var Strength = save_file.strength +10
		save_file.strength = Strength
		print(fave_file.enhancerYcount)
		SaveData.save_data()
		print(fave_file.enhancerYcount)
		print(enhancerY)
	else: pass
