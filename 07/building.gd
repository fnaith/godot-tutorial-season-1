extends Control

signal on_mini_game_pressed()

var base_cost
var building_data
var cost

func init(building_type, icon, x, y):
	base_cost = CookieData.building_settings[building_type][0]
	building_data = CookieData.building_data[building_type]
	$Button.texture_normal = icon
	position = Vector2(x, y)
	update_cost()

func _process(_delta: float) -> void:
	update_view()

func update_cost():
	cost = ceil(base_cost * pow(1.15, building_data[0]))
	update_view()

func update_view():
	$Label.text = "[right]%d[/right]" % [building_data[0]]
	$Panel.color = Color.GRAY if CookieData.cookies < cost else Color.BLACK

func _on_texture_button_pressed() -> void:
	if CookieData.cookies >= cost:
		CookieData.cookies -= cost
		building_data[0] += 1
		update_cost()

func _on_mini_game_button_pressed() -> void:
	on_mini_game_pressed.emit()
