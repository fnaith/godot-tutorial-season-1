extends Node

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
	if building_type == "Cursor":
		var non_cursor_gain = 0
		if CookieData.building_data[building_type][4] == 1:
			non_cursor_gain = 0.1
			if CookieData.building_data[building_type][5] == 1:
				non_cursor_gain += 0.5
			if CookieData.building_data[building_type][6] == 1:
				non_cursor_gain += 1.0
			for tier in range(7, 15):
				if CookieData.building_data[building_type][tier] == 1:
					non_cursor_gain += 2.0
			var total_count = 0
			for building_data in CookieData.building_data.values():
				total_count += building_data[0]
			non_cursor_gain *= (total_count - count)
		for tier in range(1, 3):
			if CookieData.building_data[building_type][tier] == 1:
				base_cps *= 2
		return count * base_cps + non_cursor_gain
	else:
		for tier in range(1, 15):
			if CookieData.building_data[building_type][tier] == 1:
				base_cps *= 2
		return count * base_cps

func get_cps():
	var cps = 0.0
	for building_type in CookieData.building_settings.keys():
		cps += get_building_cps(building_type)
	return cps

func _on_texture_button_pressed() -> void:
	CookieData.cookies += 1
	update_label()

func update_label():
	$Label.text = "%f" % [CookieData.cookies]
