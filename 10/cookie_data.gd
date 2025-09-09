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

var tiered_upgrade_cursor = [
	["Reinforced index finger", 1, 100, "The mouse and cursors are twice as efficient."],
	["Carpal tunnel prevention cream", 1, 500, "The mouse and cursors are twice as efficient."],
	["Ambidextrous", 10, 10_000, "The mouse and cursors are twice as efficient."],
	["Thousand fingers", 25, 100_000, "The mouse and cursors gain +0.1 cookies for each non-cursor object owned."],
	["Million fingers", 50, 10 * million, "Multiplies the gain from Thousand fingers by 5."],
	["Billion fingers", 100, 100 * million, "Multiplies the gain from Thousand fingers by 10."],
	["Trillion fingers", 150, 1 * billion, "Multiplies the gain from Thousand fingers by 20."],
	["Quadrillion fingers", 200, 10 * billion, "Multiplies the gain from Thousand fingers by 20."],
	["Quintillion fingers", 250, 10 * trillion, "Multiplies the gain from Thousand fingers by 20."],
	["Sextillion fingers", 300, 10 * quadrillion, "Multiplies the gain from Thousand fingers by 20."],
	["Septillion fingers", 350, 10 * quintillion, "Multiplies the gain from Thousand fingers by 20."],
	["Octillion fingers", 400, 10 * sextillion, "Multiplies the gain from Thousand fingers by 20."],
	["Nonillion fingers", 450, 10 * septillion, "Multiplies the gain from Thousand fingers by 20."],
	["Decillion fingers", 500, 10 * octillion, "Multiplies the gain from Thousand fingers by 20."],
	["Undecillion fingers", 550, 10 * nonillion, "Multiplies the gain from Thousand fingers by 20."],
]

var tiered_upgrade_grandma = [
	["Forwards from grandma", 1, 1_000, "Grandmas are twice as efficient."],
	["Steel-plated rolling pins", 5, 5_000, "Grandmas are twice as efficient."],
	["Lubricated dentures", 25, 50_000, "Grandmas are twice as efficient."],
	["Prune juice", 50, 5 * million, "Grandmas are twice as efficient."],
	["Double-thick glasses", 100, 500 * million, "Grandmas are twice as efficient."],
	["Aging agents", 150, 50 * billion, "Grandmas are twice as efficient."],
	["Xtreme walkers", 200, 50 * trillion, "Grandmas are twice as efficient."],
	["The Unbridling", 250, 50 * quadrillion, "Grandmas are twice as efficient."],
	["Reverse dementia", 300, 50 * quintillion, "Grandmas are twice as efficient."],
	["Timeproof hair dyes", 350, 50 * sextillion, "Grandmas are twice as efficient."],
	["Good manners", 400, 500 * septillion, "Grandmas are twice as efficient."],
	["Generation degeneration", 450, 5 * nonillion, "Grandmas are twice as efficient."],
	["Visits", 500, 50 * decillion, "Grandmas are twice as efficient."],
	["Kitchen cabinets", 550, 500 * undecillion, "Grandmas are twice as efficient."],
	["Foam-tipped canes", 600, 5 * tredecillion, "Grandmas are twice as efficient."],
]

var tiered_upgrade_farm = [
	["Cheap hoes", 1, 11_000, "Farms are twice as efficient."],
	["Fertilizer", 5, 55_000, "Farms are twice as efficient."],
	["Cookie trees", 25, 550_000, "Farms are twice as efficient."],
	["Genetically-modified cookies", 50, 55 * million, "Farms are twice as efficient."],
	["Gingerbread scarecrows", 100, 5.5 * billion, "Farms are twice as efficient."],
	["Pulsar sprinklers", 150, 550 * billion, "Farms are twice as efficient."],
	["Fudge fungus", 200, 550 * trillion, "Farms are twice as efficient."],
	["Wheat triffids", 250, 550 * quadrillion, "Farms are twice as efficient."],
	["Humane pesticides", 300, 550 * quintillion, "Farms are twice as efficient."],
	["Barnstars", 350, 550 * sextillion, "Farms are twice as efficient."],
	["Lindworms", 400, 5.5 * octillion, "Farms are twice as efficient."],
	["Global seed vault", 450, 55 * nonillion, "Farms are twice as efficient."],
	["Reverse-veganism", 500, 550 * decillion, "Farms are twice as efficient."],
	["Cookie mulch", 550, 5.5 * duodecillion, "Farms are twice as efficient."],
	["Self-driving tractors", 600, 55 * tredecillion, "Farms are twice as efficient."],
]

var tiered_upgrade_mine = [
	["Sugar gas", 1, 120_000, "Mines are twice as efficient."],
	["Megadrill", 5, 600_000, "Mines are twice as efficient."],
	["Ultradrill", 25, 6 * million, "Mines are twice as efficient."],
	["Ultimadrill", 50, 600 * million, "Mines are twice as efficient."],
	["H-bomb mining", 100, 60 * billion, "Mines are twice as efficient."],
	["Coreforge", 150, 6 * trillion, "Mines are twice as efficient."],
	["Planetsplitters", 200, 6 * quadrillion, "Mines are twice as efficient."],
	["Canola oil wells", 250, 6 * quintillion, "Mines are twice as efficient."],
	["Mole people", 300, 6 * sextillion, "Mines are twice as efficient."],
	["Mine canaries", 350, 6 * septillion, "Mines are twice as efficient."],
	["Bore again", 400, 60 * octillion, "Mines are twice as efficient."],
	["Air mining", 450, 600 * nonillion, "Mines are twice as efficient."],
	["Caramel alloys", 500, 6 * undecillion, "Mines are twice as efficient."],
	["Delicious mineralogy", 550, 60 * duodecillion, "Mines are twice as efficient."],
	["Mineshaft supports", 600, 600 * tredecillion, "Mines are twice as efficient."],
]

var tiered_upgrade_factory = [
	["Sturdier conveyor belts", 1, 1.3 * million, "Factories are twice as efficient."],
	["Child labor", 5, 6.5 * million, "Factories are twice as efficient."],
	["Sweatshop", 25, 65 * million, "Factories are twice as efficient."],
	["Radium reactors", 50, 6.5 * billion, "Factories are twice as efficient."],
	["Recombobulators", 100, 650 * billion, "Factories are twice as efficient."],
	["Deep-bake process", 150, 65 * trillion, "Factories are twice as efficient."],
	["Cyborg workforce", 200, 65 * quadrillion, "Factories are twice as efficient."],
	["78-hour days", 250, 65 * quintillion, "Factories are twice as efficient."],
	["Machine learning", 300, 65 * sextillion, "Factories are twice as efficient."],
	["Brownie point system", 350, 65 * septillion, "Factories are twice as efficient."],
	["\"Volunteer\" interns", 400, 650 * octillion, "Factories are twice as efficient."],
	["Behavioral reframing", 450, 6.5 * decillion, "Factories are twice as efficient."],
	["The infinity engine", 500, 65 * undecillion, "Factories are twice as efficient."],
	["N-dimensional assembly lines", 550, 650 * duodecillion, "Factories are twice as efficient."],
	["Universal automation", 600, 6.5 * quattuordecillion, "Factories are twice as efficient."],
]

var tiered_upgrade_bank = [
	["Taller tellers", 1, 14 * million, "Banks are twice as efficient."],
	["Scissor-resistant credit cards", 5, 70 * million, "Banks are twice as efficient."],
	["Acid-proof vaults", 25, 700 * million, "Banks are twice as efficient."],
	["Chocolate coins", 50, 70 * billion, "Banks are twice as efficient."],
	["Exponential interest rates", 100, 7 * trillion, "Banks are twice as efficient."],
	["Financial zen", 150, 700 * trillion, "Banks are twice as efficient."],
	["Way of the wallet", 200, 700 * quadrillion, "Banks are twice as efficient."],
	["The stuff rationale", 250, 700 * quintillion, "Banks are twice as efficient."],
	["Edible money", 300, 700 * sextillion, "Banks are twice as efficient."],
	["Grand supercycle", 350, 700 * septillion, "Banks are twice as efficient."],
	["Rules of acquisition", 400, 7 * nonillion, "Banks are twice as efficient."],
	["Altruistic loop", 450, 70 * decillion, "Banks are twice as efficient."],
	["Diminishing tax returns", 500, 700 * undecillion, "Banks are twice as efficient."],
	["Cookie Points", 550, 7 * tredecillion, "Banks are twice as efficient."],
	["The big shortcake", 600, 70 * quattuordecillion, "Banks are twice as efficient."],
]

var tiered_upgrade_temple = [
	["Golden idols", 1, 200 * million, "Temples are twice as efficient."],
	["Sacrifices", 5, 1 * billion, "Temples are twice as efficient."],
	["Delicious blessing", 25, 10 * billion, "Temples are twice as efficient."],
	["Sun festival", 50, 1 * trillion, "Temples are twice as efficient."],
	["Enlarged pantheon", 100, 100 * trillion, "Temples are twice as efficient."],
	["Great Baker in the sky", 150, 10 * quadrillion, "Temples are twice as efficient."],
	["Creation myth", 200, 10 * quintillion, "Temples are twice as efficient."],
	["Theocracy", 250, 10 * sextillion, "Temples are twice as efficient."],
	["Sick rap prayers", 300, 10 * septillion, "Temples are twice as efficient."],
	["Psalm-reading", 350, 10 * octillion, "Temples are twice as efficient."],
	["War of the gods", 400, 100 * nonillion, "Temples are twice as efficient."],
	["A novel idea", 450, 1 * undecillion, "Temples are twice as efficient."],
	["Apparitions", 500, 10 * duodecillion, "Temples are twice as efficient."],
	["Negatheism", 550, 100 * tredecillion, "Temples are twice as efficient."],
	["Temple traps", 600, 1 * quindecillion, "Temples are twice as efficient."],
]

var tiered_upgrade_wizard_tower = [
	["Pointier hats", 1, 3.3 * billion, "Wizard towers are twice as efficient."],
	["Beardlier beards", 5, 16.5 * billion, "Wizard towers are twice as efficient."],
	["Ancient grimoires", 25, 165 * billion, "Wizard towers are twice as efficient."],
	["Kitchen curses", 50, 16.5 * trillion, "Wizard towers are twice as efficient."],
	["School of sorcery", 100, 1.65 * quadrillion, "Wizard towers are twice as efficient."],
	["Dark formulas", 150, 165 * quadrillion, "Wizard towers are twice as efficient."],
	["Cookiemancy", 200, 165 * quintillion, "Wizard towers are twice as efficient."],
	["Rabbit trick", 250, 165 * sextillion, "Wizard towers are twice as efficient."],
	["Deluxe tailored wands", 300, 165 * septillion, "Wizard towers are twice as efficient."],
	["Immobile spellcasting", 350, 165 * octillion, "Wizard towers are twice as efficient."],
	["Electricity", 400, 1.65 * decillion, "Wizard towers are twice as efficient."],
	["Spelling bees", 450, 16.5 * undecillion, "Wizard towers are twice as efficient."],
	["Wizard basements", 500, 165 * duodecillion, "Wizard towers are twice as efficient."],
	["Magical realism", 550, 1.65 * quattuordecillion, "Wizard towers are twice as efficient."],
	["Polymorphism", 600, 16.5 * quindecillion, "Wizard towers are twice as efficient."],
]

var tiered_upgrade_shipment = [
	["Vanilla nebulae", 1, 51 * billion, "Shipments are twice as efficient."],
	["Wormholes", 5, 255 * billion, "Shipments are twice as efficient."],
	["Frequent flyer", 25, 2.55 * trillion, "Shipments are twice as efficient."],
	["Warp drive", 50, 255 * trillion, "Shipments are twice as efficient."],
	["Chocolate monoliths", 100, 25.5 * quadrillion, "Shipments are twice as efficient."],
	["Generation ship", 150, 2.55 * quintillion, "Shipments are twice as efficient."],
	["Dyson sphere", 200, 2.55 * sextillion, "Shipments are twice as efficient."],
	["The final frontier", 250, 2.55 * septillion, "Shipments are twice as efficient."],
	["Autopilot", 300, 2.55 * octillion, "Shipments are twice as efficient."],
	["Restaurants at the end of the universe", 350, 2.55 * nonillion, "Shipments are twice as efficient."],
	["Universal alphabet", 400, 25.5 * decillion, "Shipments are twice as efficient."],
	["Toroid universe", 450, 255 * undecillion, "Shipments are twice as efficient."],
	["Prime directive", 500, 2.55 * tredecillion, "Shipments are twice as efficient."],
	["Cosmic foreground radiation", 550, 25.5 * quattuordecillion, "Shipments are twice as efficient."],
	["At your doorstep in 30 minutes or your money back", 600, 255 * quindecillion, "Shipments are twice as efficient."],
]

var tiered_upgrade_alchemy_lab = [
	["Antimony", 1, 750 * billion, "Alchemy labs are twice as efficient."],
	["Essence of dough", 5, 3.75 * trillion, "Alchemy labs are twice as efficient."],
	["True chocolate", 25, 37.5 * trillion, "Alchemy labs are twice as efficient."],
	["Ambrosia", 50, 3.75 * quadrillion, "Alchemy labs are twice as efficient."],
	["Aqua crustulae", 100, 375 * quadrillion, "Alchemy labs are twice as efficient."],
	["Origin crucible", 150, 37.5 * quintillion, "Alchemy labs are twice as efficient."],
	["Theory of atomic fluidity", 200, 37.5 * sextillion, "Alchemy labs are twice as efficient."],
	["Beige goo", 250, 37.5 * septillion, "Alchemy labs are twice as efficient."],
	["The advent of chemistry", 300, 37.5 * octillion, "Alchemy labs are twice as efficient."],
	["On second thought", 350, 37.5 * nonillion, "Alchemy labs are twice as efficient."],
	["Public betterment", 400, 375 * decillion, "Alchemy labs are twice as efficient."],
	["Hermetic reconciliation", 450, 3.75 * duodecillion, "Alchemy labs are twice as efficient."],
	["Chromatic cycling", 500, 37.5 * tredecillion, "Alchemy labs are twice as efficient."],
	["Arcanized glassware", 550, 375 * quattuordecillion, "Alchemy labs are twice as efficient."],
	["The dose makes the poison", 600, 3.75 * sexdecillion, "Alchemy labs are twice as efficient."],
]

var tiered_upgrade_portal = [
	["Ancient tablet", 1, 10 * trillion, "Portals are twice as efficient."],
	["Insane oatling workers", 5, 50 * trillion, "Portals are twice as efficient."],
	["Soul bond", 25, 500 * trillion, "Portals are twice as efficient."],
	["Sanity dance", 50, 50 * quadrillion, "Portals are twice as efficient."],
	["Brane transplant", 100, 5 * quintillion, "Portals are twice as efficient."],
	["Deity-sized portals", 150, 500 * quintillion, "Portals are twice as efficient."],
	["End of times back-up plan", 200, 500 * sextillion, "Portals are twice as efficient."],
	["Maddening chants", 250, 500 * septillion, "Portals are twice as efficient."],
	["The real world", 300, 500 * octillion, "Portals are twice as efficient."],
	["Dimensional garbage gulper", 350, 500 * nonillion, "Portals are twice as efficient."],
	["Embedded microportals", 400, 5 * undecillion, "Portals are twice as efficient."],
	["His advent", 450, 50 * duodecillion, "Portals are twice as efficient."],
	["Domestic rifts", 500, 500 * tredecillion, "Portals are twice as efficient."],
	["Portal guns", 550, 5 * quindecillion, "Portals are twice as efficient."],
	["A way home", 600, 50 * sexdecillion, "Portals are twice as efficient."],
]

var tiered_upgrade_time_machine = [
	["Flux capacitors", 1, 140 * trillion, "Time machines are twice as efficient."],
	["Time paradox resolver", 5, 700 * trillion, "Time machines are twice as efficient."],
	["Quantum conundrum", 25, 7 * quadrillion, "Time machines are twice as efficient."],
	["Causality enforcer", 50, 700 * quadrillion, "Time machines are twice as efficient."],
	["Yestermorrow comparators", 100, 70 * quintillion, "Time machines are twice as efficient."],
	["Far future enactment", 150, 7 * sextillion, "Time machines are twice as efficient."],
	["Great loop hypothesis", 200, 7 * septillion, "Time machines are twice as efficient."],
	["Cookietopian moments of maybe", 250, 7 * octillion, "Time machines are twice as efficient."],
	["Second seconds", 300, 7 * nonillion, "Time machines are twice as efficient."],
	["Additional clock hands", 350, 7 * decillion, "Time machines are twice as efficient."],
	["Nostalgia", 400, 70 * undecillion, "Time machines are twice as efficient."],
	["Split seconds", 450, 700 * duodecillion, "Time machines are twice as efficient."],
	["Patience abolished", 500, 7 * quattuordecillion, "Time machines are twice as efficient."],
	["Timeproof upholstery", 550, 70 * quindecillion, "Time machines are twice as efficient."],
	["Rectifying a mistake", 600, 700 * sexdecillion, "Time machines are twice as efficient."],
]

var tiered_upgrade_antimatter_condenser = [
	["Sugar bosons", 1, 1.7 * quadrillion, "Antimatter condensers are twice as efficient."],
	["String theory", 5, 8.5 * quadrillion, "Antimatter condensers are twice as efficient."],
	["Large macaron collider", 25, 85 * quadrillion, "Antimatter condensers are twice as efficient."],
	["Big bang bake", 50, 8.5 * quintillion, "Antimatter condensers are twice as efficient."],
	["Reverse cyclotrons", 100, 850 * quintillion, "Antimatter condensers are twice as efficient."],
	["Nanocosmics", 150, 85 * sextillion, "Antimatter condensers are twice as efficient."],
	["The Pulse", 200, 85 * septillion, "Antimatter condensers are twice as efficient."],
	["Some other super-tiny fundamental particle? Probably?", 250, 85 * octillion, "Antimatter condensers are twice as efficient."],
	["Quantum comb", 300, 85 * nonillion, "Antimatter condensers are twice as efficient."],
	["Baking Nobel prize", 350, 85 * decillion, "Antimatter condensers are twice as efficient."],
	["The definite molecule", 400, 850 * undecillion, "Antimatter condensers are twice as efficient."],
	["Flavor itself", 450, 8.5 * tredecillion, "Antimatter condensers are twice as efficient."],
	["Delicious pull", 500, 85 * quattuordecillion, "Antimatter condensers are twice as efficient."],
	["Employee minification", 550, 850 * quindecillion, "Antimatter condensers are twice as efficient."],
	["Candied atoms", 600, 8.5 * septendecillion, "Antimatter condensers are twice as efficient."],
]

var tiered_upgrade_prism = [
	["Gem polish", 1, 21 * quadrillion, "Prisms are twice as efficient."],
	["9th color", 5, 105 * quadrillion, "Prisms are twice as efficient."],
	["Chocolate light", 25, 1.05 * quintillion, "Prisms are twice as efficient."],
	["Grainbow", 50, 105 * quintillion, "Prisms are twice as efficient."],
	["Pure cosmic light", 100, 10.5 * sextillion, "Prisms are twice as efficient."],
	["Glow-in-the-dark", 150, 1.05 * septillion, "Prisms are twice as efficient."],
	["Lux sanctorum", 200, 1.05 * octillion, "Prisms are twice as efficient."],
	["Reverse shadows", 250, 1.05 * nonillion, "Prisms are twice as efficient."],
	["Crystal mirrors", 300, 1.05 * decillion, "Prisms are twice as efficient."],
	["Reverse theory of light", 350, 10.5 * undecillion, "Prisms are twice as efficient."],
	["Light capture measures", 400, 10.5 * duodecillion, "Prisms are twice as efficient."],
	["Light speed limit", 450, 105 * tredecillion, "Prisms are twice as efficient."],
	["Occam's laser", 500, 1.05 * quindecillion, "Prisms are twice as efficient."],
	["Hyperblack paint", 550, 10.5 * sexdecillion, "Prisms are twice as efficient."],
	["Lab goggles but like cool shades", 600, 105 * septendecillion, "Prisms are twice as efficient."],
]

var tiered_upgrade_chancemaker = [
	["Your lucky cookie", 1, 260 * quadrillion, "Chancemakers are twice as efficient."],
	["\"All Bets Are Off\" magic coin", 5, 1.3 * quintillion, "Chancemakers are twice as efficient."],
	["Winning lottery ticket", 25, 13 * quintillion, "Chancemakers are twice as efficient."],
	["Four-leaf clover field", 50, 1.3 * sextillion, "Chancemakers are twice as efficient."],
	["A recipe book about books", 100, 130 * sextillion, "Chancemakers are twice as efficient."],
	["Leprechaun village", 150, 13 * septillion, "Chancemakers are twice as efficient."],
	["Improbability drive", 200, 13 * octillion, "Chancemakers are twice as efficient."],
	["Antisuperstistronics", 250, 13 * nonillion, "Chancemakers are twice as efficient."],
	["Bunnypedes", 300, 13 * decillion, "Chancemakers are twice as efficient."],
	["Revised probabilistics", 350, 13 * undecillion, "Chancemakers are twice as efficient."],
	["0-sided dice", 400, 130 * duodecillion, "Chancemakers are twice as efficient."],
	["A touch of determinism", 450, 1.3 * quattuordecillion, "Chancemakers are twice as efficient."],
	["On a streak", 500, 13 * quindecillion, "Chancemakers are twice as efficient."],
	["Silver lining maximization", 550, 130 * sexdecillion, "Chancemakers are twice as efficient."],
	["Gambler's fallacy fallacy", 600, 1.3 * octodecillion, "Chancemakers are twice as efficient."],
]

var tiered_upgrade_fractal_engine = [
	["Metabakeries", 1, 3.1 * quintillion, "Fractal engines are twice as efficient."],
	["Mandelbrown sugar", 5, 15.5 * quintillion, "Fractal engines are twice as efficient."],
	["Fractoids", 25, 155 * quintillion, "Fractal engines are twice as efficient."],
	["Nested universe theory", 50, 15.5 * sextillion, "Fractal engines are twice as efficient."],
	["Menger sponge cake", 100, 1.55 * septillion, "Fractal engines are twice as efficient."],
	["One particularly good-humored cow", 150, 155 * septillion, "Fractal engines are twice as efficient."],
	["Chocolate ouroboros", 200, 155 * octillion, "Fractal engines are twice as efficient."],
	["Nested", 250, 155 * nonillion, "Fractal engines are twice as efficient."],
	["Space-filling fibers", 300, 155 * decillion, "Fractal engines are twice as efficient."],
	["Endless book of prose", 350, 155 * undecillion, "Fractal engines are twice as efficient."],
	["The set of all sets", 400, 1.55 * tredecillion, "Fractal engines are twice as efficient."],
	["This upgrade", 450, 15 * quattuordecillion, "Fractal engines are twice as efficient."],
	["A box", 500, 155 * quindecillion, "Fractal engines are twice as efficient."],
	["Multiscale profiling", 550, 1.55 * septendecillion, "Fractal engines are twice as efficient."],
	["The more they stay the same", 600, 15.5 * octodecillion, "Fractal engines are twice as efficient."],
]

var tiered_upgrade_javascript_console = [
	["The JavaScript console for dummies", 1, 710 * quintillion, "Javascript consoles are twice as efficient."],
	["64bit arrays", 5, 3.55 * sextillion, "Javascript consoles are twice as efficient."],
	["Stack overflow", 25, 35.5 * sextillion, "Javascript consoles are twice as efficient."],
	["Enterprise compiler", 50, 3.55 * septillion, "Javascript consoles are twice as efficient."],
	["Syntactic sugar", 100, 355 * septillion, "Javascript consoles are twice as efficient."],
	["A nice cup of coffee", 150, 35.5 * octillion, "Javascript consoles are twice as efficient."],
	["Just-in-time baking", 200, 35.5 * nonillion, "Javascript consoles are twice as efficient."],
	["cookies++", 250, 35.5 * decillion, "Javascript consoles are twice as efficient."],
	["Software updates", 300, 35.5 * undecillion, "Javascript consoles are twice as efficient."],
	["Game.Loop", 350, 35.5 * duodecillion, "Javascript consoles are twice as efficient."],
	["eval()", 400, 355 * tredecillion, "Javascript consoles are twice as efficient."],
	["Your biggest fans", 450, 3.55 * quindecillion, "Javascript consoles are twice as efficient."],
	["Hacker shades", 500, 35.5 * sexdecillion, "Javascript consoles are twice as efficient."],
	["PHP containment vats", 550, 355 * septendecillion, "Javascrpt consoles are twice as efficient."],
	["Simulation failsafes", 600, 3.55 * novemdecillion, "Javascript consoles are twice as efficient."],
]

var tiered_upgrade_idleverse = [
	["Manifest destiny", 1, 120 * sextillion, "Idleverses are twice as efficient."],
	["The multiverse in a nutshell", 5, 600 * sextillion, "Idleverses are twice as efficient."],
	["All-conversion", 25, 6 * septillion, "Idleverses are twice as efficient."],
	["Multiverse agents", 50, 600 * septillion, "Idleverses are twice as efficient."],
	["Escape plan", 100, 60 * octillion, "Idleverses are twice as efficient."],
	["Game design", 150, 6 * nonillion, "Idleverses are twice as efficient."],
	["Sandbox universes", 200, 6 * decillion, "Idleverses are twice as efficient."],
	["Multiverse wars", 250, 6 * undecillion, "Idleverses are twice as efficient."],
	["Mobile ports", 300, 6 * duodecillion, "Idleverses are twice as efficient."],
	["Encapsulated realities", 350, 6 * tredecillion, "Idleverses are twice as efficient."],
	["Extrinsic clicking", 400, 60 * quattuordecillion, "Idleverses are twice as efficient."],
	["Universal idling", 450, 600 * quindecillion, "Idleverses are twice as efficient."],
	["Break the fifth wall", 500, 6 * septendecillion, "Idleverses are twice as efficient."],
	["Opposite universe", 550, 60 * octodecillion, "Idleverses are twice as efficient."],
	["The other routes to Rome", 600, 600 * novemdecillion, "Idleverses are twice as efficient."],
]

var tiered_upgrade_cortex_baker = [
	["Principled neural shackles", 1, 19 * septillion, "Cortex bakers are twice as efficient."],
	["Obey", 5, 95 * septillion, "Cortex bakers are twice as efficient."],
	["A sprinkle of irrationality", 25, 950 * septillion, "Cortex bakers are twice as efficient."],
	["Front and back hemispheres", 50, 95 * octillion, "Cortex bakers are twice as efficient."],
	["Neural networking", 100, 9.5 * nonillion, "Cortex bakers are twice as efficient."],
	["Cosmic brainstorms", 150, 950 * nonillion, "Cortex bakers are twice as efficient."],
	["Megatherapy", 200, 950 * decillion, "Cortex bakers are twice as efficient."],
	["Synaptic lubricant", 250, 950 * undecillion, "Cortex bakers are twice as efficient."],
	["Psychokinesis", 300, 950 * duodecillion, "Cortex bakers are twice as efficient."],
	["Spines", 350, 950 * tredecillion, "Cortex bakers are twice as efficient."],
	["Neuraforming", 400, 9.5 * quindecillion, "Cortex bakers are twice as efficient."],
	["Epistemological trickery", 450, 95 * sexdecillion, "Cortex bakers are twice as efficient."],
	["Every possible idea", 500, 950 * septendecillion, "Cortex bakers are twice as efficient."],
	["The land of dreams", 550, 9.5 * novemdecillion, "Cortex bakers are twice as efficient."],
	["Intellectual property theft", 600, 95 * vigintillion, "Cortex bakers are twice as efficient."],
]

var tiered_upgrade_you = [
	["Cloning vats", 1, 5.4 * octillion, "You are twice as efficient."],
	["Energized nutrients", 5, 27 * octillion, "You are twice as efficient."],
	["Stunt doubles", 25, 270 * octillion, "You are twice as efficient."],
	["Clone recycling plant", 50, 27 * nonillion, "You are twice as efficient."],
	["Free-range clones", 100, 2.7 * decillion, "You are twice as efficient."],
	["Genetic tailoring", 150, 270 * decillion, "You are twice as efficient."],
	["Power in diversity", 200, 270 * undecillion, "You are twice as efficient."],
	["Self-betterment", 250, 270 * duodecillion, "You are twice as efficient."],
	["Source control", 300, 270 * tredecillion, "You are twice as efficient."],
	["United workforce", 350, 270 * quattuordecillion, "You are twice as efficient."],
	["Safety patrols", 400, 2.7 * sexdecillion, "You are twice as efficient."],
	["Clone rights", 450, 27 * septendecillion, "You are twice as efficient."],
	["One big family", 500, 270 * octodecillion, "You are twice as efficient."],
	["Fine-tuned body plans", 550, 2.7 * vigintillion, "You are twice as efficient."],
	["Reading your clones bedtime stories", 600, 27 * unvigintilion, "You are twice as efficient."],
]

var building_settings = { # base_cost, base_cps, tiered_upgrade
	"Cursor" : [15.0, 0.1, tiered_upgrade_cursor],
	"Grandma" : [100.0, 1.0, tiered_upgrade_grandma],
	"Farm" : [1_100.0, 8.0, tiered_upgrade_farm],
	"Mine" : [12_000.0, 47.0, tiered_upgrade_mine],
	"Factory" : [130_000.0, 260.0, tiered_upgrade_factory],
	"Bank" : [1.4 * million, 1_400.0, tiered_upgrade_bank],
	"Temple" : [20 * million, 7_800.0, tiered_upgrade_temple],
	"Wizard Tower" : [330 * million, 44_000.0, tiered_upgrade_wizard_tower],
	"Shipment" : [5.1 * billion, 260_000.0, tiered_upgrade_shipment],
	"Alchemy Lab" : [75 * billion, 1.6 * million, tiered_upgrade_alchemy_lab],
	"Portal" : [1 * trillion, 10 * million, tiered_upgrade_portal],
	"Time Machine" : [14 * trillion, 65 * million, tiered_upgrade_time_machine],
	"Antimatter Condenser" : [170 * trillion, 430 * million, tiered_upgrade_antimatter_condenser],
	"Prism" : [2.1 * quadrillion, 2.9 * billion, tiered_upgrade_prism],
	"Chancemaker" : [26 * quadrillion, 21 * billion, tiered_upgrade_chancemaker],
	"Fractal Engine" : [310 * quadrillion, 150 * billion, tiered_upgrade_fractal_engine],
	"Javascript Console" : [71 * quintillion, 1.1 * trillion, tiered_upgrade_javascript_console],
	"Idleverse" : [12 * sextillion, 8.3 * trillion, tiered_upgrade_idleverse],
	"Cortex Baker" : [1.9 * septillion, 64 * trillion, tiered_upgrade_cortex_baker],
	"You" : [540 * septillion, 510 * trillion, tiered_upgrade_you],
}

var building_data = { # count, tier 1~15
	"Cursor" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Grandma" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Farm" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Mine" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Factory" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Bank" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Temple" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Wizard Tower" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Shipment" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Alchemy Lab" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Portal" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Time Machine" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Antimatter Condenser" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Prism" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Chancemaker" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Fractal Engine" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Javascript Console" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Idleverse" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"Cortex Baker" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	"You" : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
}

var cookies = 100000000000000000.0
