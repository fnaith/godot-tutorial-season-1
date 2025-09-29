extends Node

var level = 1
var answer = randi_range(0, 1)
var is_playing = true
var board = ""

func _ready() -> void:
	update_view()

func update_view():
	$Blue.texture_normal = load("res://04/skilliconpack/blue/%d.png" % level)
	$Green.texture_normal = load("res://04/skilliconpack/green/%d.png" % level)
	$Label.text = "[center]Level %d%s[/center]" % [level, board]

func check_answer(color):
	if is_playing:
		board += "\n青            " if answer == 0 else "\n            綠"
		if color == answer:
			if level < 13:
				level += 1
				answer = randi_range(0, 1)
				update_view()
			else:
				end_game("You Win! All Level")
		else:
			end_game("You Lose. Max Level")

func end_game(message):
	is_playing = false
	$Label.text = "[center]%s : %d%s[/center]" % [message, level, board]

func _on_blue_pressed() -> void:
	check_answer(0)

func _on_green_pressed() -> void:
	check_answer(1)
