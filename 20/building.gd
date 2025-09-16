extends Control

var building_setting
var building_data
var cost

func set_building_type(building_type, icon, x, y):
	building_setting = CookieData.building_settings[building_type]
	building_data = CookieData.building_data[building_type]
	$Button.texture_normal = icon
	position = Vector2(x, y)
	update_cost()

func _process(_delta: float) -> void:
	update_view()

func update_cost():
	var base_cost = building_setting[0]
	var count = building_data[0]
	cost = ceil(base_cost * pow(1.15, count))
	update_view()

func update_view():
	$Panel.color = Color.GRAY if CookieData.cookies < cost else Color.BLACK
	$Label.text = "[right]%d[/right]" % [building_data[0]]

func _on_texture_button_pressed() -> void:
	if CookieData.cookies >= cost:
		CookieData.cookies -= cost
		building_data[0] += 1
		update_cost()
