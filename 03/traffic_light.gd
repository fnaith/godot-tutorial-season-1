extends Node

var index = randi_range(0, 2)

func _ready() -> void:
	_reset()

func _reset():
	index += 1
	if index == 3:
		index = 0
	$Red.modulate.a = 1 if 0 == index else 0.5
	$Yellow.modulate.a = 1 if 1 == index else 0.5
	$Green.modulate.a = 1 if 2 == index else 0.5

func _on_red_pressed() -> void:
	if index == 0:
		_reset()

func _on_yellow_pressed() -> void:
	if index == 1:
		_reset()

func _on_green_pressed() -> void:
	if index == 2:
		_reset()
