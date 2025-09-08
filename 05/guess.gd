extends Control

func update_view(answer_key, guess_key, x, y):
	position = Vector2(x, y)

	var answer = TalentData.talent_settings[answer_key]
	var guess = TalentData.talent_settings[guess_key]

	$Name.color = Color.GREEN if answer["name"] == guess["name"] else Color.RED
	$Name/Label.text = "[center]%s[/center]" % guess["name"]

	$Language.color = Color.GREEN if answer["language"] == guess["language"] else Color.RED
	$Language/Label.text = "[center]%s[/center]" % guess["language"]

	$Generation.color = Color.GREEN if answer["gen"] == guess["gen"] else Color.RED
	$Generation/Label.text = _build_compare_hint(answer["gen"], guess["gen"], guess["gen_name"])

	$Hair.color = Color.GREEN if answer["hair"] == guess["hair"] else Color.RED
	$Hair/Label.text = "[center]%s[/center]" % guess["hair"]

	$Height.color = Color.GREEN if answer["height"] == guess["height"] else Color.RED
	$Height/Label.text = _build_compare_hint(answer["height"], guess["height"], guess["height"])

	var month = guess["birthday"] / 100
	var day = guess["birthday"] - month * 100
	var date = "%d/%d" % [month, day]
	$Birthday.color = Color.GREEN if answer["birthday"] == guess["birthday"] else Color.RED
	$Birthday/Label.text = _build_compare_hint(answer["birthday"], guess["birthday"], date)

func _build_compare_hint(a, b, hint):
	if a == b:
		return "[center]%s[/center]" % hint
	return "[center]%s %s[/center]" % ["<" if a < b else ">", hint]
