extends Area2D

@onready var timer: Timer = $Timer
@onready var game_manager: Node = %GameManager

var tmp_body

func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	Engine.time_scale = 0.5
	tmp_body = body
	
	# TODO: Disabling/enabling the collision doesn't seem to actually
	#       cause the fall effect that I'd like
	body.get_node("CollisionShape2D").disabled = true
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	tmp_body.get_node("CollisionShape2D").disabled = false
	game_manager.respawn()
