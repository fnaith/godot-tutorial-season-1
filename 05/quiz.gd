extends Node

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
			_end_game("You Win!")
		else:
			left_guess -= 1
			if left_guess > 0:
				$Label.text = "[center]Guesses left : %d[/center]" % left_guess
			else:
				_end_game("You Lose.")

func _end_game(message):
	left_guess = 0
	var answer = TalentData.talent_settings[answer_key][0]
	$Label.text = "[center]%s\nThe answer is\n%s[/center]" % [message, answer]
