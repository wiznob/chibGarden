extends GutTest
onready var save_file = SaveData.gameData #creating save object

func _ready():
	SaveData.testMode()

func test_happiness():
	var value = save_file.happiness - 20 #makes a variable and set the value happiness -20
	save_file.happiness = value #assgins value to save file
	SaveData.save_data() #saves updated data to device
	var result = save_file.happiness #Reslut takes variable takes its value from the save data
	assert_eq(result, 80) # compares result to expected outcome
	
func test_hunger():
	
	var value = save_file.hunger - 40
	save_file.hunger = value
	var result = save_file.hunger
	assert_eq(result, 60)
	
func test_stamina():
	var value = save_file.stamina - 35
	save_file.stamina = value
	var result = save_file.stamina
	assert_eq(result, 65)

func test_strength():
	var value = save_file.strength - 100
	save_file.strength = value 
	var result = save_file.strength
	assert_eq(result, 0)
	
func test_name():
	var value = "Tim"
	save_file.name = value 
	var result = save_file.name
	assert_eq(result, "Tim")
	
