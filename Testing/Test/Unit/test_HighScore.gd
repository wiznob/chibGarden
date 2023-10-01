extends GutTest
onready var save_file = HighScore.gameData

func _ready():
	HighScore.testMode()

func test_UpdateScore():

	var value = 0  
	save_file.save1 = value #assgins value to save file
	HighScore.save_data() #saves updated data to device
	
	var score = 1
	
	if(score > save_file.save1):
		save_file.save1= score
		HighScore.save_data()

	var result = save_file.save1 #result takes the value of the save
	
	assert_eq(result, 1) # compares result to expected outcome

func test_Scoretwo():
	var value = save_file.save2 + 5
	save_file.save2 = value #assgins value to save file
	HighScore.save_data() #saves updated data to device
	var result = save_file.save2 #result takes the value of the saves
	assert_eq(result, 5) # compares result to expected outcome
	
