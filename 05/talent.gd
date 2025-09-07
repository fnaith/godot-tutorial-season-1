extends Node

var quiz
var talent_key

func set_talent_key(new_quiz, key):
	quiz = new_quiz
	talent_key = key
	var talent_setting = TalentData.talent_settings[talent_key]
	$ColorRect.color = talent_setting["bg_color"]
	$RichTextLabel.text = "[center]%s[/center]" % talent_setting["name"]

func _on_texture_button_pressed() -> void:
	quiz.check_answer(talent_key)
