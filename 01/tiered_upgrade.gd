extends Control

var building_type := ""
var tier := 0
var owned := false
var unlocked := false
@onready var button := $TextureButton as TextureButton
@onready var rect := $ColorRect

func _ready() -> void:
	var tier_upgrade = CookieData.building_settings[building_type][2][tier - 1]
	button.tooltip_text = tier_upgrade[0] + "\n" + tier_upgrade[3]
	update_view()

func _process(_delta: float) -> void:
	update_view()

func update_view():
	owned = 0 != (CookieData.building_data[building_type][1] & (1 << tier))
	var count = CookieData.building_data[building_type][0]
	unlocked = count >= CookieData.building_settings[building_type][2][tier - 1][1]
	button.modulate.a = 1.0 if unlocked else 0.2
	button.disabled = owned || !unlocked
	rect.color = Color.YELLOW if owned else Color.WHITE
	var cost = CookieData.building_settings[building_type][2][tier - 1][2]
	button.scale = Vector2.ONE * (0.8 if !unlocked && CookieData.cookies < cost else 1.0)

func _on_texture_button_pressed() -> void:
	if !owned && unlocked:
		var cost = CookieData.building_settings[building_type][2][tier - 1][2]
		if CookieData.cookies >= cost:
			CookieData.cookies -= cost
			CookieData.building_data[building_type][1] |= (1 << tier)
			update_view()
