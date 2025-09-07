extends Node

var level = 0
var answer
var answers = ""
var is_playing = true

func _ready() -> void:
	_next_level()

func _next_level():
	level += 1
	answer = randi_range(0, 1)
	$Label.text = "[center]Level %d%s[/center]" % [level, answers]
	$Blue.texture_normal = load("res://04/skilliconpack/blue/%d.png" % level)
	$Green.texture_normal = load("res://04/skilliconpack/green/%d.png" % level)

func _check_answer(color):
	if is_playing:
		if answer == 0:
			answers += "\n青            "
		else:
			answers += "\n            綠"
		if answer == color:
			if level == 13:
				_end_game("You Win! All Level")
			else:
				_next_level()
		else:
			_end_game("You Lose. Max Level")

func _end_game(message):
	is_playing = false
	$Label.text = "[center]%s : %d%s[/center]" % [message, level, answers]

func _on_blue_pressed() -> void:
	_check_answer(0)

func _on_green_pressed() -> void:
	_check_answer(1)
