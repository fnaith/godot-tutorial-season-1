extends Node

func update_view(answer, talent_key):
	var answer_setting = TalentData.talent_settings[answer]
	var talent_setting = TalentData.talent_settings[talent_key]

	$Name.color = Color.GREEN if answer_setting["name"] == talent_setting["name"] else Color.RED
	$Name/Label.text = "[center]%s[/center]" % talent_setting["name"]

	$Language.color = Color.GREEN if answer_setting["language"] == talent_setting["language"] else Color.RED
	$Language/Label.text = "[center]%s[/center]" % talent_setting["language"]

	if answer_setting["generation"] == talent_setting["generation"]:
		$Generation.color = Color.GREEN
		$Generation/Label.text = "[center]%s[/center]" % talent_setting["generation_name"]
	else:
		$Generation.color = Color.RED
		if answer_setting["generation"] < talent_setting["generation"]:
			$Generation/Label.text = "[center]< %s[/center]" % talent_setting["generation_name"]
		else:
			$Generation/Label.text = "[center]> %s[/center]" % talent_setting["generation_name"]

	$Hair.color = Color.GREEN if answer_setting["hair"] == talent_setting["hair"] else Color.RED
	$Hair/Label.text = "[center]%s[/center]" % talent_setting["hair"]

	if answer_setting["height"] == talent_setting["height"]:
		$Height.color = Color.GREEN
		$Height/Label.text = "[center]%s[/center]" % talent_setting["height"]
	else:
		$Height.color = Color.RED
		if answer_setting["height"] < talent_setting["height"]:
			$Height/Label.text = "[center]< %s[/center]" % talent_setting["height"]
		else:
			$Height/Label.text = "[center]> %s[/center]" % talent_setting["height"]

	var month = talent_setting["birthday"] / 100
	var day = talent_setting["birthday"] - month * 100
	if answer_setting["birthday"] == talent_setting["birthday"]:
		$Birthday.color = Color.GREEN
		$Birthday/Label.text = "[center]%d/%d[/center]" % [month, day]
	else:
		$Birthday.color = Color.RED
		if answer_setting["birthday"] < talent_setting["birthday"]:
			$Birthday/Label.text = "[center]< %d/%d[/center]" % [month, day]
		else:
			$Birthday/Label.text = "[center]> %d/%d[/center]" % [month, day]
