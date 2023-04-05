extends Area2D



func _on_Player_entered(body: Node) -> void:
	if "player" in body.name:
		body.queue_free()
