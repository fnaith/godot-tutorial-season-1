extends Node

func _ready() -> void:
	var building_scene = preload("./building.tscn")
	for building_type in CookieData.building_settings.keys():
		var building_index = CookieData.building_settings.keys().find(building_type)
		var icon = load("res://20/icon/%d.png" % building_index)
		var building = building_scene.instantiate()
		var x = building_index / 10
		var y = building_index - x * 10
		$Buildings.add_child(building)
		building.set_building_type(building_type, icon, x * 160, y * 72)
		if building_type == "Chancemaker":
			add_1_8192_game(building)
	var tiered_upgrade_scene = preload("./tiered_upgrade.tscn")
	for building_type in CookieData.building_settings.keys():
		var building_setting = CookieData.building_settings[building_type]
		var building_index = CookieData.building_settings.keys().find(building_type)
		var icon = load("res://20/icon/%d.png" % building_index)
		for tier_index in building_setting[2].size():
			var upgrade_tier = tier_index + 1
			var x = tier_index * 36
			var y = building_index * 36
			var tiered_upgrade = tiered_upgrade_scene.instantiate()
			$TieredUpgrades.add_child(tiered_upgrade)
			tiered_upgrade.set_building_type(building_type, upgrade_tier, icon, x, y)
	$MiniGame/Huh/TextureButton.pressed.connect(close_mini_game)

func add_1_8192_game(building):
	building.on_easter_egg_pressed.connect(new_1_8192_game)

func new_1_8192_game():
	var game_scene = load("res://14/1_8192.tscn")
	var game = game_scene.instantiate()
	$MiniGame.add_child(game)
	game.on_end_game.connect(on_1_8192_end_game)
	$MiniGame.visible = true

func on_1_8192_end_game(is_win, max_level):
	$MiniGame/Huh.visible = true

func close_mini_game():
	$MiniGame.visible = false
	$MiniGame/Huh.visible = false
	$MiniGame.remove_child($MiniGame.get_child(0))
