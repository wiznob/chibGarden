extends CanvasLayer

signal use_move_vector


var move_vector = Vector2(0,0)
var joystick_active = false

func _input(event):
	if event is InputEventScreenTouch or event is InputEventScreenDrag:
		if $TouchScreenButton.is_pressed():
			move_vector = calculate_move_vector(event.position)
			emit_signal("use_move_vector", move_vector)
			#hopefully get this working in future
			#joystick_active = true
			#$InnerCircle.position = event.position
			#$InnerCircle.visible = true
			
	#if event is InputEventScreenTouch:
	#	if event.pressed == false:
	#		joystick_active = false
	#		$InnerCircle.visible = true
		
#func _physics_process(delta):
#	if joystick_active:
#		emit_signal("use_move_vector", move_vector)

func calculate_move_vector(event_position):
	var texture_center = $TouchScreenButton.position + Vector2(32,32)
	return (event_position - texture_center).normalized()




