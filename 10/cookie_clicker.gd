extends Node

func _ready() -> void:
	var building_scene = preload("./building.tscn")
	for building_type in CookieData.building_settings.keys():
		var building_index = CookieData.building_settings.keys().find(building_type)
		var icon = load("res://10/icon/%d.png" % building_index)
		var building = building_scene.instantiate()
		var x = building_index / 10
		var y = building_index - x * 10
		$Buildings.add_child(building)
		building.set_building_type(building_type, icon, x * 160, y * 72)
	var tiered_upgrade_scene = preload("./tiered_upgrade.tscn")
	for building_type in CookieData.building_settings.keys():
		var building_setting = CookieData.building_settings[building_type]
		var building_index = CookieData.building_settings.keys().find(building_type)
		var icon = load("res://10/icon/%d.png" % building_index)
		for tier_index in building_setting[2].size():
			var upgrade_tier = tier_index + 1
			var x = tier_index * 36
			var y = building_index * 36
			var tiered_upgrade = tiered_upgrade_scene.instantiate()
			$TieredUpgrades.add_child(tiered_upgrade)
			tiered_upgrade.set_building_type(building_type, upgrade_tier, icon, x, y)
