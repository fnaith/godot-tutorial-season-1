extends Node

signal on_end_game(score)

var level = 1
var answer = randi_range(0, 1)
var is_playing = true
var history = ""

func _ready() -> void:
	update_view()

func update_view():
	$Blue.texture_normal = load("res://14/skilliconpack/blue/%d.png" % level)
	$Green.texture_normal = load("res://14/skilliconpack/green/%d.png" % level)
	$Label.text = "[center]Level %d%s[/center]" % [level, history]

func check_answer(color):
	if is_playing:
		history += "\n青            " if answer == 0 else "\n            綠"
		if answer == color:
			if 13 > level:
				level += 1
				answer = randi_range(0, 1)
				update_view()
			else:
				_end_game("You Win! All Level", level)
		else:
			_end_game("You Lose. Max Level", level - 1)

func _end_game(message, level):
	is_playing = false
	$Label.text = "[center]%s : %d%s[/center]" % [message, level, history]
	on_end_game.emit(pow(2, level))

func _on_blue_pressed() -> void:
	check_answer(0)

func _on_green_pressed() -> void:
	check_answer(1)
