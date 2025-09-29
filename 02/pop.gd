extends Node

var count = 0

func _process(delta: float) -> void:
	$RichTextLabel.text = "點擊數 : %d" % count

func _on_texture_button_pressed() -> void:
	count += 1
