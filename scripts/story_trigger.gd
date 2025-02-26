extends Area2D

@onready var game_manager: Node = %GameManager
@onready var story_trigger: Area2D = $"."

func _on_body_entered(body: Node2D) -> void:
	game_manager.trigger_story()
	story_trigger.queue_free()
	
