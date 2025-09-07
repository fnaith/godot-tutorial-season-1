extends Node

func _ready() -> void:
	var tiered_upgrade_scene = preload("./tiered_upgrade.tscn")
	for building_type in CookieData.building_settings.keys():
		var building_setting = CookieData.building_settings[building_type]
		var building_index = CookieData.building_settings.keys().find(building_type)
		for tier_index in building_setting[2].size():
			var tiered_upgrade = tiered_upgrade_scene.instantiate()
			tiered_upgrade.building_type = building_type
			tiered_upgrade.tier = tier_index + 1
			tiered_upgrade.position = Vector2(tier_index, building_index) * 24
			$TieredUpgrades.add_child(tiered_upgrade)
