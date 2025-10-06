extends Control

var quiz
var key

func init(talent_quiz, talent_key, x, y):
	quiz = talent_quiz
	key = talent_key
	position = Vector2(x, y)
	var talent_setting = TalentData.talent_settings[talent_key]
	$ColorRect.color = talent_setting[7]
	$RichTextLabel.text = "[center]%s[/center]" % talent_setting[0]

func _on_texture_button_pressed() -> void:
	if $RichTextLabel.visible:
		$RichTextLabel.visible = false
		quiz.check_answer(key)
