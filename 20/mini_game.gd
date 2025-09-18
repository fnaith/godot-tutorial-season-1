extends Control

var mini_game_key
var game

func _ready() -> void:
	$Huh/TextureButton.pressed.connect(exit)

func enter(new_mini_game_key):
	mini_game_key = new_mini_game_key
	var scene_path = CookieData.mini_game_settings[mini_game_key][0]
	var game_scene = load(scene_path)
	game = game_scene.instantiate()
	add_child(game)
	game.on_end_game.connect(end)
	visible = true

func exit():
	visible = false
	$Huh.visible = false
	mini_game_key = null
	remove_child(game)
	game = null

func end(score):
	CookieData.mini_game_data[mini_game_key][0] += score
	$Huh.visible = true
