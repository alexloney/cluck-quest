extends Node

@onready var label: Label = $"../CanvasLayer/Label"
@onready var player: CharacterBody2D = $"../Player"

var story_state = 0
var saved_x = 0
var saved_y = 0

var story = [
	"There once was a chicken",
	"That walked through the world",
	"All it wanted was joy and happiness"
]

func advance_story():
	if story_state == 0:
		story_state = 1
		label.text = story[story_state]
	elif story_state == 1:
		story_state = 2
		label.text = story[story_state]
	elif story_state == 2:
		story_state = 3
		label.text = story[story_state]
	
	saved_x = player.global_position.x
	saved_y - player.global_position.y

func respawn():
	player.global_position.x = saved_x
	player.global_position.y = saved_y
