extends Node

var elapsed_time = 0.0

func _ready() -> void:
	update_label()

func _process(delta: float) -> void:
	elapsed_time += delta
	while elapsed_time >= 1:
		elapsed_time -= 1
		CookieData.cookies += get_cps()
	update_label()

func get_cpc():
	var building_type = "Cursor"
	var base_cpc = 1
	var count = CookieData.building_data[building_type][0]
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
			base_cpc *= 2
	return base_cpc + non_cursor_gain

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

func update_label():
	$Cookie.text = "Cookie : %s" % get_scientific_notation(CookieData.cookies)
	$CPS.text = "CPS %s" % get_scientific_notation(get_cps())
	$CPC.text = "CPC %s" % get_scientific_notation(get_cpc())

#https://gist.github.com/t-karcher/053b7097e744bc3ba4e1d20441ab72a7
func get_scientific_notation(number: float, precision: int = 99, use_engineering_notation: bool = false) -> String:
	var sign_ = sign(number)
	number = abs(number)
	if number < 1:
		var exp_ = step_decimals(number)
		if use_engineering_notation: exp_ = snapped(exp_ + 1, 3)
		var coeff = sign_ * number * pow(10, exp_)
		return str(snapped(coeff, pow(10, -precision))) + "e" + str(-exp_)
	elif number >= 10:
		var exp_ = str(number).split(".")[0].length() - 1
		if use_engineering_notation: exp_ = snapped(exp_ - 1, 3)
		var coeff = sign_ * number / pow(10, exp_)
		return str(snapped(coeff, pow(10, -precision))) + "e" + str(exp_)
	else:
		return str(snapped(sign_ * number, pow(10, -precision))) + "e0"

func _on_texture_button_pressed() -> void:
	CookieData.cookies += get_cpc()
