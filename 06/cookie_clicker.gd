extends Node

func _ready() -> void:
	for building_index in CookieData.building_settings.keys().size():
		var building_type = CookieData.building_settings.keys()[building_index]
		var icon = load("res://06/icon/%d.png" % building_index)

		var building = preload("./building.tscn").instantiate()
		var x = floor(building_index * 0.1)
		var y = building_index - x * 10
		$Buildings.add_child(building)
		building.init(building_type, icon, x * 160, y * 72)

func _process(_delta: float) -> void:
	$Win.visible = CookieData.cookies >= pow(10, 100)
