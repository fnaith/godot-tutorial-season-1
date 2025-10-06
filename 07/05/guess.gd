extends Control

func init(answer_key, guess_key, x, y):
	position = Vector2(x, y)

	var answer = TalentData.talent_settings[answer_key]
	var guess = TalentData.talent_settings[guess_key]

	$Name.color = Color.GREEN if answer[0] == guess[0] else Color.RED
	$Name/Label.text = "[center]%s[/center]" % guess[0]

	$Language.color = Color.GREEN if answer[1] == guess[1] else Color.RED
	$Language/Label.text = "[center]%s[/center]" % guess[1]

	$Generation.color = Color.GREEN if answer[2] == guess[2] else Color.RED
	$Generation/Label.text = _build_compare_hint(answer[2], guess[2], guess[3])

	$Hair.color = Color.GREEN if answer[4] == guess[4] else Color.RED
	$Hair/Label.text = "[center]%s[/center]" % guess[4]

	$Height.color = Color.GREEN if answer[5] == guess[5] else Color.RED
	$Height/Label.text = _build_compare_hint(answer[5], guess[5], guess[5])

	var month = guess[6] / 100
	var day = guess[6] - month * 100
	var date = "%d/%d" % [month, day]
	$Birthday.color = Color.GREEN if answer[6] == guess[6] else Color.RED
	$Birthday/Label.text = _build_compare_hint(answer[6], guess[6], date)

func _build_compare_hint(a, b, hint):
	if a == b:
		return "[center]%s[/center]" % hint
	return "[center]%s %s[/center]" % ["<" if a < b else ">", hint]
