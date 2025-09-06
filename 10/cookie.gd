extends Control

@onready var label = $RichTextLabel

var elapsed_time = 0.0

func _ready() -> void:
	update_label()

func _process(delta: float) -> void:
	elapsed_time += delta
	while elapsed_time >= 1:
		elapsed_time -= 1
		process_cps()

func process_cps():
	CookieData.cookies += get_cps()
	update_label()

func get_building_cps(building_type):
	var base_cps = CookieData.building_settings[building_type][1]
	var count = CookieData.building_data[building_type][0]
	return base_cps * count

func get_cps():
	var cps = 0.0
	for building_type in CookieData.building_settings.keys():
		cps += get_building_cps(building_type)
	return cps

func _on_texture_button_pressed() -> void:
	CookieData.cookies += 1
	update_label()

func update_label():
	label.text = "%f" % [CookieData.cookies]
