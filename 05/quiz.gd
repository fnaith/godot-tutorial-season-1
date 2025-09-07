extends Node

var is_playing = true
var left_guess = 5
var answer

func _ready() -> void:
	answer = TalentData.talent_settings.keys().pick_random()
	var talent_scene = preload("./talent.tscn")
	for y in TalentData.talent_grid.size():
		var talent_list = TalentData.talent_grid[y]
		for x in talent_list.size():
			var talent_key = talent_list[x]
			var talent = talent_scene.instantiate()
			$Talents.add_child(talent)
			talent.set_talent_key(self, talent_key)
			talent.position = Vector2(x * 100, y * 40)
	$Label.text = "[center]Guesses left : %d[/center]" % left_guess

func check_answer(talent_key):
	if is_playing:
		var guess_scene = preload("./guess.tscn")
		var guess = guess_scene.instantiate()
		$Guesses.add_child(guess)
		guess.position = Vector2(0, (5 - left_guess) * 40)
		guess.update_view(answer, talent_key)
		if answer == talent_key:
			is_playing = false
			$Label.text = "[center]You Win![/center]"
		else:
			left_guess -= 1
			if left_guess > 0:
				$Label.text = "[center]Guesses left : %d[/center]" % left_guess
			else:
				is_playing = false
				$Label.text = "[center]You Lose.[/center]"
