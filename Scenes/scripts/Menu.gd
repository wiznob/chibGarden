extends Control

onready var save_file = SaveData.gameData
onready var timer  = get_node("Timer")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var food = load("res://Scenes/Food_Scene/Food.tscn")
var newFood = food.instance()
onready var save_foods = FoodData.gameData
# Called when the node enters the scene tree for the first time.

func _ready():

	$CoinContainer/CoinCount.set_text(str(save_foods.money))

	#timer.set_wait_time(2)
	#timer.start()
	# check if the chib died 
	#if(save_file.age > 30):
		#$deathPopUp.show()
		
	#coin displaying
	#$CoinContainer/CoinCount.set_text(save_foods.money)#(String(save_foods.money))
			
	if(save_file.name  == "i"):
	#	$Name.show()
		#print(save_file.name )
		get_tree().change_scene("res://Scenes/test.tscn")


func _on_settingsBTN_pressed():
	get_tree().paused = true
	$Settingspopup.show()

#Tempoary hopfully 
func _on_backsButton_pressed():
		$Settingspopup.hide()
		get_tree().paused = false
	
#	 if get_tree().paused == false:
#			get_tree().paused = true 
#	 else:
#			get_tree().paused = false
	#get_tree().change_scene("res://Scenes/SettingsGUI.tscn")

#func _on_feedBTN_pressed():
#	get_parent().add_child(newFood)
func _on_feedBTN_pressed():
	get_tree().change_scene("res://Scenes/Food_Scene/feeding.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_gamesBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$MiniGamesPopUp.hide()
	else:
		get_tree().paused = true
		$MiniGamesPopUp.show()

func _on_shopBTN_pressed():
	if(get_tree().paused == true):
		get_tree().paused = false
		$shopPopUP.hide()
	else:
		get_tree().paused = true
		$shopPopUP.show()


func _on_item1_pressed():
	print("green pressed") # Replace with function body.


func _on_graveBTN_pressed():
	get_tree().change_scene("res://Scenes/graveYard.tscn")


func timeUP():
	# check if the chib died 
	if(save_file.age > 30):
		get_tree().paused = true
		$deathPopUp.show()

func _on_toGraveYard_pressed():
	get_tree().change_scene("res://Scenes/graveYard.tscn")
	get_tree().paused = false 


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
