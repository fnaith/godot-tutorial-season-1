extends Control

var quiz
var talent_key

func set_talent_key(new_quiz, key, x, y):
	quiz = new_quiz
	talent_key = key
	position = Vector2(x, y)
	var talent_setting = TalentData.talent_settings[talent_key]
	$ColorRect.color = talent_setting[7]
	$RichTextLabel.text = "[center]%s[/center]" % talent_setting[0]

func _on_texture_button_pressed() -> void:
	$RichTextLabel.visible = false
	quiz.check_answer(talent_key)
