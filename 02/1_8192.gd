extends Control

var level = 0
var answer
var answers = ""
var is_game_end = false

func _ready() -> void:
	_next_level()

func _next_level():
	level += 1
	answer = "blue" if 0 == randi_range(0, 1) else "green"
	$Label.text = "[center]Level %d%s[/center]" % [level, answers]
	$Blue.texture_normal = load("res://02/skilliconpack/blue/%d.png" % [level])
	$Green.texture_normal = load("res://02/skilliconpack/green/%d.png" % [level])

func _check_answer(color) -> void:
	if !is_game_end:
		if color == "blue":
			answers += "\nBlue             "
		else:
			answers += "\n            Green"
		if answer == color or true:
			if level < 13:
				_next_level()
			else:
				_end_game("You Win! All Level")
		else:
			_end_game("You Lose. Max Level")

func _end_game(message):
	is_game_end = true
	$Label.text = "[center]%s : %d%s[/center]" % [message, level, answers]

func _on_blue_button_down() -> void:
	_check_answer("blue")

func _on_green_pressed() -> void:
	_check_answer("green")
