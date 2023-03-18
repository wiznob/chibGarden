extends Sprite

const VELOCITY: float= -1.5
var g_texture_width: float = 0

func _ready():
	g_texture_width = texture.get_size().x *scale.x
	

func _process(delta: float) -> void:
	_attempt_reposition()
	position.x += VELOCITY
	
	
func _attempt_reposition() -> void:
	if position.x <= -g_texture_width/2:
		position.x =+ 2 * g_texture_width
