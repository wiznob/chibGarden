extends ParallaxBackground

func _physics_process(delta):
	$ParallaxBackground/ParallaxLayer.motion_offset.x += 1
