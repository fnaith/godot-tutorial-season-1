extends Control

@export var building_type := ""
@export var icon : Resource
var cost : float
@onready var button := $TextureButton as TextureButton
@onready var label := $RichTextLabel as RichTextLabel

func _ready() -> void:
	button.texture_normal = icon
	update_cost()

func _process(_delta: float) -> void:
	update_view()

func update_cost():
	var base_cost = CookieData.building_settings[building_type][0]
	var count = CookieData.building_data[building_type][0]
	cost = ceil(base_cost * pow(1.15, count))
	update_view()

func update_view():
	button.disabled = CookieData.cookies < cost
	button.scale = Vector2.ONE * (0.8 if button.disabled else 1.0)
	label.text = "%d" % [CookieData.building_data[building_type][0]]

func _on_texture_button_pressed() -> void:
	if CookieData.cookies >= cost:
		CookieData.cookies -= cost
		CookieData.building_data[building_type][0] += 1
		update_cost()
