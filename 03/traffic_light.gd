extends Node

var light_id = randi_range(0, 2)

func _ready() -> void:
	$Yellow.color = Color.YELLOW
	$Green.color = Color(0.0, 1.0, 0.0)
	update_view()

func update_view() -> void:
	$Red.color.a = 1.0 if 0 == light_id else 0.2
	$Yellow.color.a = 1.0 if 1 == light_id else 0.2
	$Green.color.a = 1.0 if 2 == light_id else 0.2

func next_light(pressed_light_id):
	if light_id == pressed_light_id:
		light_id += 1
		if light_id == 3:
			light_id = 0
		update_view()

func _on_red_button_pressed() -> void:
	next_light(0)

func _on_yellow_button_pressed() -> void:
	next_light(1)

func _on_green_button_pressed() -> void:
	next_light(2)
