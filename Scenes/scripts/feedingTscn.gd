extends Control
var hunger = 5
var food = load("res://Scenes/Food_Scene/Food.tscn")
var apple = load("res://Scenes/Food_Scene/apple.tscn")
var lemon = load("res://Scenes/Food_Scene/lemon.tscn")
var mango = load("res://Scenes/Food_Scene/mango.tscn")
var orange = load("res://Scenes/Food_Scene/orange.tscn")
var newFood = food.instance()
var newApple = apple.instance()
var newLemon = lemon.instance()
var newMango = mango.instance()
var newOrange = orange.instance()

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#revove bellow line after the video and demonstration
	get_node("hunger").set_value(hunger)
	
	pass # Replace with function body.
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
	get_parent().add_child(newApple)
	


func _on_lemonbtn_pressed():
	get_parent().add_child(newLemon)


func _on_mangobtn_pressed():
	get_parent().add_child(newMango)


func _on_orangebtn_pressed():
	get_parent().add_child(newOrange)


func _on_bananabtn_pressed():
	get_parent().add_child(newFood)
	
	
	
	
	#temporary code for food faking, it will make it so that the fake hunger bar will increase after 3 seconds




var timer = Timer.new()
func _on_TempFoodHolder_gui_input(event):
	timer.connect("timeout",self,"do_this")
	timer.wait_time = 3
	timer.one_shot = true
	add_child(timer)
	timer.start()

func do_this():
	hunger = hunger +10
	get_node("hunger").set_value(hunger)
