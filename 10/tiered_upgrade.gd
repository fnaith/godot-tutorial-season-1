extends Node

var building_type := ""
var tier := 0
var owned := false
var unlocked := false

func _ready() -> void:
	var tier_upgrade = CookieData.building_settings[building_type][2][tier - 1]
	$Button.tooltip_text = tier_upgrade[0] + "\n" + tier_upgrade[3]
	update_view()

func _process(_delta: float) -> void:
	update_view()

func update_view():
	owned = 0 != (CookieData.building_data[building_type][1] & (1 << tier))
	var count = CookieData.building_data[building_type][0]
	unlocked = count >= CookieData.building_settings[building_type][2][tier - 1][1]
	$Button.modulate.a = 1.0 if unlocked else 0.2
	$Button.disabled = owned || !unlocked
	$ColorRect.color = Color.YELLOW if owned else Color.WHITE
	var cost = CookieData.building_settings[building_type][2][tier - 1][2]
	$Button.scale = Vector2.ONE * (0.8 if !unlocked && CookieData.cookies < cost else 1.0)

func _on_texture_button_pressed() -> void:
	if !owned && unlocked:
		var cost = CookieData.building_settings[building_type][2][tier - 1][2]
		if CookieData.cookies >= cost:
			CookieData.cookies -= cost
			CookieData.building_data[building_type][1] |= (1 << tier)
			update_view()
