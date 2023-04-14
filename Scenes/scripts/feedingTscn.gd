extends Control
onready var save_foods = FoodData.gameData#save_foods = food save file
onready var save_file = SaveData.gameData

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
##removed because of actual hungerbar addition
func _ready():
	$CoinContainer/CoinCount.set_text(str(save_foods.money))#(String(save_files.money))
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
	if(save_foods.applecount > 0):
		var applele = save_foods.applecount -1
		var Hunger = save_file.hunger +20
		save_file.hunger = Hunger
		save_foods.applecount = applele
		print(save_foods.applecount)
		SaveData.save_data()
		FoodData.save_data()
		print(save_foods.applecount)
		print(applele)
		print(Hunger)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_lemonbtn_pressed():
	if(save_foods.lemoncount > 0):
		var lemonon = save_foods.lemoncount -1
		var Hunger = save_file.hunger +15
		save_file.hunger = Hunger
		save_foods.lemoncount = lemonon
		print(save_foods.lemoncount)
		SaveData.save_data()
		FoodData.save_data()
		print(save_foods.lemoncount)
		print(lemonon)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_mangobtn_pressed():
	if(save_foods.mangocount > 0):
		var mangogo = save_foods.mangocount -1
		var Hunger = save_file.hunger +30
		save_file.hunger = Hunger
		save_foods.mangocount = mangogo
		print(save_foods.mangocount)
		SaveData.save_data()
		FoodData.save_data()
		print(save_foods.mangocount)
		print(mangogo)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_orangebtn_pressed():
	if(save_foods.orangecount > 0):
		var orangege = save_foods.orangecount -1
		var Hunger = save_file.hunger +70
		save_file.hunger = Hunger
		save_foods.orangecount = orangege
		print(save_foods.orangecount)
		SaveData.save_data()
		FoodData.save_data()
		print(save_foods.orangecount)
		print(orangege)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_bananabtn_pressed():
	#add_child_below_node(self,newFood)
	##get_parent().add_child(newFood)
	#get_node("stamina").set_value(save_file.save1)
	#var one = 5 
	#one += 1
	#save_file.save1  = one
	if(save_foods.bananacount > 0):
		var bananana = save_foods.bananacount -1
		var Hunger = save_file.hunger +15
		save_file.hunger = Hunger
		save_foods.bananacount = bananana
		print(save_foods.bananacount)
		SaveData.save_data()
		FoodData.save_data()
		print(save_foods.bananacount)
		print(bananana)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
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
	if(save_foods.enhancerBcount > 0):
		var enhancerB = save_foods.enhancerBcount -1
		var Strength = save_file.strength +20
		save_file.strength = Strength
		save_foods.enhancerBcount = enhancerB
		print(save_foods.enhancerBcount)
		SaveData.save_data()
		FoodData.save_data()
		print(save_foods.enhancerBcount)
		print(enhancerB)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_enhancerGbtn_pressed():
	if(save_foods.enhancerGcount > 0):
		var enhancerG = save_foods.enhancerGcount -1
		var Stamina = save_file.stamina +20
		save_file.stamina = Stamina
		save_foods.enhancerGcount = enhancerG
		print(save_foods.enhancerGcount)
		SaveData.save_data()
		print(save_foods.enhancerGcount)
		print(enhancerG)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_enhancerPbtn_pressed():
	if(save_foods.enhancerPcount > 0):
		var enhancerP = save_foods.enhancerPcount -1
		var Happiness = save_file.happiness +20
		save_file.happiness = Happiness
		save_foods.enhancerPcount = enhancerP
		print(save_foods.enhancerPcount)
		SaveData.save_data()
		print(save_foods.enhancerPcount)
		print(enhancerP)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_enhancerRbtn_pressed():
	if(save_foods.enhancerRcount > 0):
		var enhancerR = save_foods.enhancerRcount -1
		var Age = save_file.age -5
		save_file.age = Age
		save_foods.enhancerRcount = enhancerR
		print(save_foods.enhancerRcount)
		SaveData.save_data()
		print(save_foods.enhancerRcount)
		print(enhancerR)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_enhancerYbtn_pressed():
	if(save_foods.enhancerYcount > 0):
		var enhancerY = save_foods.enhancerYcount -1
		var Stamina = save_file.stamina +10
		save_file.stamina = Stamina
		save_foods.enhancerYcount = enhancerY
		var Strength = save_file.strength +10
		save_file.strength = Strength
		print(save_foods.enhancerYcount)
		SaveData.save_data()
		print(save_foods.enhancerYcount)
		print(enhancerY)
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass
	
func _on_bananna_pressed():
	if(save_foods.money > 15):
		var moneyey = save_foods.money -15
		var bananana = save_foods.bananacount +1
		save_foods.bananacount = bananana
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_apple_pressed():
	if(save_foods.money > 20):
		var moneyey = save_foods.money -20
		var applele = save_foods.applecount +1
		save_foods.applecount = applele
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass

func _on_mango_pressed():
	if(save_foods.money > 30):
		var moneyey = save_foods.money -30
		var mangogo = save_foods.mangocount +1
		save_foods.mangocount = mangogo
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass

func _on_orange_pressed():
	if(save_foods.money > 70):
		var moneyey = save_foods.money -70
		var orangege = save_foods.orangecount +1
		save_foods.orangecount = orangege
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_Lemon_pressed():
	if(save_foods.money > 15):
		var moneyey = save_foods.money -15
		var lemonon = save_foods.lemoncount +1
		save_foods.lemoncount = lemonon
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_yBooster_pressed():
	if(save_foods.money > 60):
		var moneyey = save_foods.money -60
		var enhancerY = save_foods.enhancerYcount +1
		save_foods.enhancerYcount = enhancerY
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_bBooster_pressed():
	if(save_foods.money > 20):
		var moneyey = save_foods.money -20
		var enhancerB = save_foods.enhancerBcount +1
		save_foods.enhancerBcount = enhancerB
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_gBooster_pressed():
	if(save_foods.money > 33):
		var moneyey = save_foods.money -33
		var enhancerG = save_foods.enhancerGcount +1
		save_foods.enhancerGcount = enhancerG
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_rBooster_pressed():
	if(save_foods.money > 100):
		var moneyey = save_foods.money -100
		var enhancerR = save_foods.enhancerRcount +1
		save_foods.enhancerRcount = enhancerR
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass


func _on_pBooster_pressed():
	if(save_foods.money > 40):
		var moneyey = save_foods.money -40
		var enhancerP = save_foods.enhancerPcount +1
		save_foods.enhancerPcount = enhancerP
		save_foods.money = moneyey
		FoodData.save_data()
		$CoinContainer/CoinCount.set_text(str(save_foods.money))
	else: pass





func _on_shopBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$shopPopUP.hide()
	else:
		get_tree().paused = true
		$shopPopUP.show()
