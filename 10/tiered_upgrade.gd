extends Node

var building_type = ""
var tier = 0
var tier_setting
var building_data

func _ready() -> void:
	tier_setting = CookieData.building_settings[building_type][2]
	building_data = CookieData.building_data[building_type]
	var tier_upgrade = tier_setting[tier - 1]
	$Button.tooltip_text = tier_upgrade[0] + "\n" + tier_upgrade[3]
	update_view()

func _process(_delta: float) -> void:
	update_view()

func update_view():
	var owned = building_data[tier] == 1
	var count = building_data[0]
	var unlocked = count >= tier_setting[tier - 1][1]
	var cost = tier_setting[tier - 1][2]
	$Button.modulate.a = 1.0 if unlocked else 0.5
	$ColorRect.color = Color.GREEN if owned else (Color.GRAY if !unlocked || CookieData.cookies < cost else Color.YELLOW)

func _on_texture_button_pressed() -> void:
	var owned = building_data[tier] == 1
	var count = building_data[0]
	var unlocked = count >= tier_setting[tier - 1][1]
	if !owned && unlocked:
		var cost = tier_setting[tier - 1][2]
		if CookieData.cookies >= cost:
			CookieData.cookies -= cost
			building_data[tier] = 1
			$Button.disabled = true
			update_view()
