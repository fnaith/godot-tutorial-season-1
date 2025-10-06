extends Node

var elapsed_time = 0.0

func _ready() -> void:
	update_label()

func _process(delta: float) -> void:
	elapsed_time += delta
	while elapsed_time >= 1:
		elapsed_time -= 1
		CookieData.cookies += CookieData.get_cps()
	update_label()

func update_label():
	$Cookie.text = "Cookies : %s" % format_number(CookieData.cookies)
	$CPS.text = "Cookie Per Second : %s" % format_number(CookieData.get_cps())
	$CPC.text = "Cookie Per Click : %s" % format_number(CookieData.get_cpc())

func format_number(number: float) -> String:
	if number <= 0:
		return "0"
	if is_inf(number):
		return "INF"
	var exponent = floor(log(abs(number)) / log(10))
	var mantissa = number / pow(10, exponent)
	return "%.2f * 10^%d" % [mantissa, exponent]

func _on_texture_button_pressed() -> void:
	CookieData.cookies += CookieData.get_cpc()
	$TextureButton.rotation_degrees += 7
	update_label()
