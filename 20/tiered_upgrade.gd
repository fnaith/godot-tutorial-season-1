extends Control

var tier
var tier_setting
var building_data
var owned
var locked

func set_building_type(building_type, upgrade_tier, icon, x, y):
	tier = upgrade_tier
	tier_setting = CookieData.building_settings[building_type][2][tier - 1]
	building_data = CookieData.building_data[building_type]
	$Panel.color = CookieData.colors[tier]
	$Button.texture_normal = icon
	$Button.tooltip_text = tier_setting[0] + "\n" + tier_setting[3]
	position = Vector2(x, y)
	update_view()

func _process(_delta: float) -> void:
	update_view()

func update_view():
	owned = building_data[tier] == 1
	locked = building_data[0] < tier_setting[1]
	var can_buy = CookieData.cookies >= tier_setting[2]
	$Button.modulate.a = 1.0 if owned else (0.5 if locked else 0.0)
	$ColorRect.color.a = 0.0 if owned || (!locked && can_buy) else 1.0

func _on_texture_button_pressed() -> void:
	if !owned && !locked && CookieData.cookies >= tier_setting[2]:
		CookieData.cookies -= tier_setting[2]
		building_data[tier] = 1
		$Button.disabled = true
		update_view()
