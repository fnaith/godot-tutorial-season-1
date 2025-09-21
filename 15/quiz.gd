extends Node

signal on_end_game(score)

var answer_key = TalentData.talent_settings.keys().pick_random()
var left_guess = 5

func _ready() -> void:
	for y in TalentData.talent_keys.size():
		for x in TalentData.talent_keys[y].size():
			var talent_key = TalentData.talent_keys[y][x]
			var talent = preload("./talent.tscn").instantiate()
			$Talents.add_child(talent)
			talent.set_talent_key(self, talent_key, x * 100, y * 40)
	$Label.text = "[center]Guesses left : %d[/center]" % left_guess

func check_answer(guess_key):
	if left_guess > 0:
		var guess = preload("./guess.tscn").instantiate()
		$Guesses.add_child(guess)
		guess.update_view(answer_key, guess_key, 0, (5 - left_guess) * 40)

		if answer_key == guess_key:
			_end_game("You Win!", 1)
		else:
			left_guess -= 1
			if left_guess > 0:
				$Label.text = "[center]Guesses left : %d[/center]" % left_guess
			else:
				_end_game("You Lose.", 0)

func _end_game(message, score):
	left_guess = 0
	var answer = TalentData.talent_settings[answer_key]["name"]
	$Label.text = "[center]%s\nThe answer is\n%s[/center]" % [message, answer]
	on_end_game.emit(score)
