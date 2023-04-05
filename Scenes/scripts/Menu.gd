extends Control

onready var save_file = SaveData.gameData
onready var timer  = get_node("Timer")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var food = load("res://Scenes/Food_Scene/Food.tscn")
var newFood = food.instance()
onready var save_files = FoodData.gameData
# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(2)
	timer.start()
	# check if the chib died 
	if(save_file.age > 30):
		$deathPopUp.show()
		
			
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
	var bananana = save_files.bananacount +1
	save_files.bananacount = bananana
	print(save_files.bananacount)
	SaveData.save_data()
	print(save_files.bananacount)


func _on_apple_pressed():
	var applele = save_files.applecount +1
	save_files.applecount = applele
	print(save_files.applecount)
	SaveData.save_data()
	print(save_files.applecount)


func _on_mango_pressed():
	var mangogo = save_files.mangocount +1
	save_files.mangocount = mangogo
	print(save_files.mangocount)
	SaveData.save_data()
	print(save_files.mangocount)


func _on_orange_pressed():
	var orangege = save_files.orangecount +1
	save_files.orangecount = orangege
	print(save_files.orangecount)
	SaveData.save_data()
	print(save_files.orangecount)

