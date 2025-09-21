extends Node

func _ready() -> void:
	for building_index in CookieData.building_settings.keys().size():
		var building_type = CookieData.building_settings.keys()[building_index]
		var icon = load("res://20/icon/%d.png" % building_index)

		var building = preload("./building.tscn").instantiate()
		var x = floor(building_index * 0.1)
		var y = building_index - x * 10
		$Buildings.add_child(building)
		building.set_building_type(building_type, icon, x * 160, y * 72)

		if building_type == "Chancemaker":
			building.on_easter_egg_pressed.connect(entrt_1_8192)
		if building_type == "Factory":
			building.on_easter_egg_pressed.connect(entrt_quiz)

		var building_setting = CookieData.building_settings[building_type]
		for tier in range(1, building_setting[2].size() + 1):
			x = (tier - 1) * 36
			y = building_index * 36
			var tiered_upgrade = preload("./tiered_upgrade.tscn").instantiate()
			$TieredUpgrades.add_child(tiered_upgrade)
			tiered_upgrade.set_building_type(building_type, tier, icon, x, y)

func _process(_delta: float) -> void:
	$Win.visible = CookieData.cookies >= pow(10, 100)

func entrt_1_8192():
	$MiniGame.enter("1/8192")

func entrt_quiz():
	$MiniGame.enter("quiz")
