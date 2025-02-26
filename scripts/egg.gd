extends Area2D

@onready var game_manager: Node = %GameManager
@onready var egg: Area2D = $"."

func _on_body_entered(body: Node2D) -> void:
	game_manager.advance_story()
	egg.queue_free()
