extends Node

var million = pow(10, 6)
var billion = pow(10, 9)
var trillion = pow(10, 12)
var quadrillion = pow(10, 15)
var quintillion = pow(10, 18)
var sextillion = pow(10, 21)
var septillion = pow(10, 24)
var octillion = pow(10, 27)
var nonillion = pow(10, 30)
var decillion = pow(10, 33)
var undecillion = pow(10, 36)
var duodecillion = pow(10, 39)
var tredecillion = pow(10, 42)
var quattuordecillion = pow(10, 45)
var quindecillion = pow(10, 48)
var sexdecillion = pow(10, 51)
var septendecillion = pow(10, 54)
var octodecillion = pow(10, 57)
var novemdecillion = pow(10, 60)
var vigintillion = pow(10, 63)
var unvigintilion = pow(10, 66)

var building_settings = { # base_cost, base_cps
	"Cursor" : [15.0, 0.1],
	"Grandma" : [100.0, 1.0],
	"Farm" : [1_100.0, 8.0],
	"Mine" : [12_000.0, 47.0],
	"Factory" : [130_000.0, 260.0],
	"Bank" : [1.4 * million, 1_400.0],
	"Temple" : [20 * million, 7_800.0],
	"Wizard Tower" : [330 * million, 44_000.0],
	"Shipment" : [5.1 * billion, 260_000.0],
	"Alchemy Lab" : [75 * billion, 1.6 * million],
	"Portal" : [1 * trillion, 10 * million],
	"Time Machine" : [14 * trillion, 65 * million],
	"Antimatter Condenser" : [170 * trillion, 430 * million],
	"Prism" : [2.1 * quadrillion, 2.9 * billion],
	"Chancemaker" : [26 * quadrillion, 21 * billion],
	"Fractal Engine" : [310 * quadrillion, 150 * billion],
	"Javascript Console" : [71 * quintillion, 1.1 * trillion],
	"Idleverse" : [12 * sextillion, 8.3 * trillion],
	"Cortex Baker" : [1.9 * septillion, 64 * trillion],
	"You" : [540 * septillion, 510 * trillion],
}

var building_data = { # count
	"Cursor" : [0],
	"Grandma" : [0],
	"Farm" : [0],
	"Mine" : [0],
	"Factory" : [0],
	"Bank" : [0],
	"Temple" : [0],
	"Wizard Tower" : [0],
	"Shipment" : [0],
	"Alchemy Lab" : [0],
	"Portal" : [0],
	"Time Machine" : [0],
	"Antimatter Condenser" : [0],
	"Prism" : [0],
	"Chancemaker" : [0],
	"Fractal Engine" : [0],
	"Javascript Console" : [0],
	"Idleverse" : [0],
	"Cortex Baker" : [0],
	"You" : [0],
}

var cookies = pow(10, 1)

func get_cpc():
	var base_cpc = 1
	return base_cpc

func get_building_cps(building_type):
	var base_cps = building_settings[building_type][1]
	var count = building_data[building_type][0]
	base_cps *= count
	return base_cps

func get_cps():
	var cps = 0.0
	for building_type in building_settings.keys():
		cps += get_building_cps(building_type)
	return cps
