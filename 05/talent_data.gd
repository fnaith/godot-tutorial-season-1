extends Node

var talent_keys = [
	["Tokino_Sora", "Sakura_Miko", "Roboco_san", "Hoshimachi_Suisei", "Azki"],
	["Shirakami_Fubuki", "Natsuiro_Matsuri", "Akai_Haato", "Aki_Rosenthal", "Yozora_Mel"],
	["Minato_Aqua", "Murasaki_Shion", "Nakiri_Ayame", "Yuzuki_Choco", "Oozora_Subaru"],
	["Ookami_Mio", "Nekomata_Okayu", "Inugami_Korone"],
	["Usada_Pekora", "Shiranui_Flare", "Shirogane_Noel", "Uruha_Rushia", "Houshou_Marine"],
	["Amane_Kanata", "Tsunomaki_Watame", "Tokoyami_Towa", "Himemori_Luna", "Kiryu_Coco"],
	["Ayunda_Risu", "Airani_Iofifteen", "Moona_Hoshinova"],
	["Yukihana_Lamy", "Momosuzu_Nene", "Shishiro_Botan", "Omaru_Polka", "Mano_Aloe"],
	["Mori_Calliope", "Takanashi_Kiara", "Ninomae_Inanis", "Gawr_Gura", "Watson_Amelia"],
	["Kureiji_Ollie", "Anya_Melfissa", "Pavolia_Reine"],
	["IRyS", "Ceres_Fauna", "Ouro_Kronii", "Nanashi_Mumei", "Hakos_Baelz", "Tsukumo_Sana"],
	["Laplus_Darknesss", "Takane_Lui", "Hakui_Koyori", "Sakamata_Chloe", "Kazama_Iroha"],
	["Vestia_Zeta", "Kaela_Kovalskia", "Kobo_Kanaeru"],
	["Shiori_Novella", "Koseki_Bijou", "Nerissa_Ravencroft", "Fuwawa_Abyssgard", "Mococo_Abyssgard"],
	["Hiodoshi_Ao", "Otonose_Kanade", "Ichijou_Ririka", "Juufuutei_Raden", "Todoroki_Hajime"],
	["Elizabeth_Rose_Bloodflame", "Gigi_Murin", "Cecilia_Immergreen", "Raora_Panthera"],
	["Isaki_Riona", "Koganei_Niko", "Mizumiya_Su", "Rindo_Chihaya", "Kikirara_Vivi"],
]

var talent_settings = {
	"Tokino_Sora": {
		"name": "時乃空",
		"language": "JP",
		"gen": 0,
		"gen_name": "Generation 0",
		"hair": "Brown",
		"height": 160,
		"birthday": 515,
		"bg_color": Color(0.004, 0.275, 0.918)
	},
	"Roboco_san": {
		"name": "蘿蔔子",
		"language": "JP",
		"gen": 0,
		"gen_name": "Generation 0",
		"hair": "Brown",
		"height": 154,
		"birthday": 523,
		"bg_color": Color(0.502, 0.306, 0.498)
	},
	"Azki": {
		"name": "AZKi",
		"language": "JP",
		"gen": 0,
		"gen_name": "Generation 0",
		"hair": "Brown",
		"height": 158,
		"birthday": 701,
		"bg_color": Color(0.82, 0.11, 0.463)
	},
	"Sakura_Miko": {
		"name": "櫻巫女",
		"language": "JP",
		"gen": 0,
		"gen_name": "Generation 0",
		"hair": "Pink",
		"height": 152,
		"birthday": 305,
		"bg_color": Color(0.996, 0.294, 0.455)
	},
	"Hoshimachi_Suisei": {
		"name": "星街彗星",
		"language": "JP",
		"gen": 0,
		"gen_name": "Generation 0",
		"hair": "Blue",
		"height": 160,
		"birthday": 322,
		"bg_color": Color(0.176, 0.804, 0.894)
	},
	"Aki_Rosenthal": {
		"name": "亞綺",
		"language": "JP",
		"gen": 1,
		"gen_name": "Generation 1",
		"hair": "Blonde",
		"height": 162,
		"birthday": 217,
		"bg_color": Color(0.863, 0.016, 0.522)
	},
	"Akai_Haato": {
		"name": "赤井心",
		"language": "JP",
		"gen": 1,
		"gen_name": "Generation 1",
		"hair": "Blonde",
		"height": 154,
		"birthday": 810,
		"bg_color": Color(0.851, 0.024, 0.165)
	},
	"Shirakami_Fubuki": {
		"name": "白上吹雪",
		"language": "JP",
		"gen": 1,
		"gen_name": "Generation 1",
		"hair": "White",
		"height": 155,
		"birthday": 1005,
		"bg_color": Color(0.325, 0.78, 0.918)
	},
	"Natsuiro_Matsuri": {
		"name": "夏色祭",
		"language": "JP",
		"gen": 1,
		"gen_name": "Generation 1",
		"hair": "Brown",
		"height": 152,
		"birthday": 722,
		"bg_color": Color(0.996, 0.337, 0.024)
	},
	"Yozora_Mel": {
		"name": "夜空梅露",
		"language": "JP",
		"gen": 1,
		"gen_name": "Generation 1",
		"hair": "Blonde",
		"height": 154,
		"birthday": 1131,
		"bg_color": Color(0.992, 0.753, 0.02)
	},
	"Nakiri_Ayame": {
		"name": "百鬼綾目",
		"language": "JP",
		"gen": 2,
		"gen_name": "Generation 2",
		"hair": "White",
		"height": 152,
		"birthday": 1213,
		"bg_color": Color(0.792, 0.133, 0.227)
	},
	"Yuzuki_Choco": {
		"name": "癒月巧可",
		"language": "JP",
		"gen": 2,
		"gen_name": "Generation 2",
		"hair": "Blonde",
		"height": 165,
		"birthday": 214,
		"bg_color": Color(0.863, 0.337, 0.525)
	},
	"Oozora_Subaru": {
		"name": "大空昴",
		"language": "JP",
		"gen": 2,
		"gen_name": "Generation 2",
		"hair": "Brown",
		"height": 154,
		"birthday": 702,
		"bg_color": Color(0.741, 0.906, 0.09)
	},
	"Minato_Aqua": {
		"name": "湊阿庫婭",
		"language": "JP",
		"gen": 2,
		"gen_name": "Generation 2",
		"hair": "Purple",
		"height": 148,
		"birthday": 1201,
		"bg_color": Color(0.996, 0.365, 0.847)
	},
	"Murasaki_Shion": {
		"name": "紫咲詩音",
		"language": "JP",
		"gen": 2,
		"gen_name": "Generation 2",
		"hair": "White",
		"height": 145,
		"birthday": 1208,
		"bg_color": Color(0.541, 0.329, 0.796)
	},
	"Ookami_Mio": {
		"name": "大神澪",
		"language": "JP",
		"gen": 3,
		"gen_name": "hololive GAMERS",
		"hair": "Black",
		"height": 160,
		"birthday": 820,
		"bg_color": Color(0.863, 0.098, 0.208)
	},
	"Nekomata_Okayu": {
		"name": "貓又小粥",
		"language": "JP",
		"gen": 3,
		"gen_name": "hololive GAMERS",
		"hair": "Pink",
		"height": 152,
		"birthday": 222,
		"bg_color": Color(0.749, 0.396, 0.91)
	},
	"Inugami_Korone": {
		"name": "戌神沁音",
		"language": "JP",
		"gen": 3,
		"gen_name": "hololive GAMERS",
		"hair": "Brown",
		"height": 156,
		"birthday": 1001,
		"bg_color": Color(0.863, 0.706, 0.078)
	},
	"Usada_Pekora": {
		"name": "兔田佩克拉",
		"language": "JP",
		"gen": 4,
		"gen_name": "Generation 3",
		"hair": "Blue",
		"height": 153,
		"birthday": 112,
		"bg_color": Color(0.396, 0.729, 0.918)
	},
	"Shiranui_Flare": {
		"name": "不知火芙蕾雅",
		"language": "JP",
		"gen": 4,
		"gen_name": "Generation 3",
		"hair": "Blonde",
		"height": 158,
		"birthday": 402,
		"bg_color": Color(0.863, 0.22, 0.075)
	},
	"Shirogane_Noel": {
		"name": "白銀諾艾爾",
		"language": "JP",
		"gen": 4,
		"gen_name": "Generation 3",
		"hair": "Silvery",
		"height": 158,
		"birthday": 1124,
		"bg_color": Color(0.537, 0.576, 0.616)
	},
	"Houshou_Marine": {
		"name": "寶鐘瑪琳",
		"language": "JP",
		"gen": 4,
		"gen_name": "Generation 3",
		"hair": "Red",
		"height": 150,
		"birthday": 730,
		"bg_color": Color(0.655, 0.141, 0.075)
	},
	"Uruha_Rushia": {
		"name": "潤羽露西婭",
		"language": "JP",
		"gen": 4,
		"gen_name": "Generation 3",
		"hair": "Green",
		"height": 143,
		"birthday": 122,
		"bg_color": Color(0.047, 0.882, 0.733)
	},
	"Amane_Kanata": {
		"name": "天音彼方",
		"language": "JP",
		"gen": 5,
		"gen_name": "Generation 4",
		"hair": "Silvery",
		"height": 149,
		"birthday": 422,
		"bg_color": Color(0.463, 0.753, 0.918)
	},
	"Tsunomaki_Watame": {
		"name": "角卷綿芽",
		"language": "JP",
		"gen": 5,
		"gen_name": "Generation 4",
		"hair": "Blonde",
		"height": 151,
		"birthday": 606,
		"bg_color": Color(0.859, 0.855, 0.537)
	},
	"Tokoyami_Towa": {
		"name": "常闇永遠",
		"language": "JP",
		"gen": 5,
		"gen_name": "Generation 4",
		"hair": "Purple",
		"height": 150,
		"birthday": 808,
		"bg_color": Color(0.655, 0.635, 0.918)
	},
	"Himemori_Luna": {
		"name": "姬森璐娜",
		"language": "JP",
		"gen": 5,
		"gen_name": "Generation 4",
		"hair": "Pink",
		"height": 140,
		"birthday": 1010,
		"bg_color": Color(0.859, 0.424, 0.678)
	},
	"Kiryu_Coco": {
		"name": "桐生可可",
		"language": "JP",
		"gen": 5,
		"gen_name": "Generation 4",
		"hair": "Red",
		"height": 180,
		"birthday": 617,
		"bg_color": Color(0.859, 0.451, 0.067)
	},
	"Ayunda_Risu": {
		"name": "栗絲",
		"language": "ID",
		"gen": 6,
		"gen_name": "AREA 15",
		"hair": "Brown",
		"height": 153,
		"birthday": 115,
		"bg_color": Color(0.937, 0.514, 0.506)
	},
	"Moona_Hoshinova": {
		"name": "暮娜",
		"language": "ID",
		"gen": 6,
		"gen_name": "AREA 15",
		"hair": "Purple",
		"height": 165,
		"birthday": 215,
		"bg_color": Color(0.471, 0.302, 0.745)
	},
	"Airani_Iofifteen": {
		"name": "伊歐菲芙婷",
		"language": "ID",
		"gen": 6,
		"gen_name": "AREA 15",
		"hair": "Pink",
		"height": 150,
		"birthday": 715,
		"bg_color": Color(0.482, 0.875, 0.055)
	},
	"Yukihana_Lamy": {
		"name": "雪花菈米",
		"language": "JP",
		"gen": 7,
		"gen_name": "Generation 5",
		"hair": "Blue",
		"height": 158,
		"birthday": 1115,
		"bg_color": Color(0.282, 0.71, 0.89)
	},
	"Momosuzu_Nene": {
		"name": "桃鈴音音",
		"language": "JP",
		"gen": 7,
		"gen_name": "Generation 5",
		"hair": "Blonde",
		"height": 159,
		"birthday": 302,
		"bg_color": Color(0.996, 0.478, 0.059)
	},
	"Shishiro_Botan": {
		"name": "獅白牡丹",
		"language": "JP",
		"gen": 7,
		"gen_name": "Generation 5",
		"hair": "Silvery",
		"height": 166,
		"birthday": 908,
		"bg_color": Color(0.373, 0.812, 0.651)
	},
	"Omaru_Polka": {
		"name": "尾丸波爾卡",
		"language": "JP",
		"gen": 7,
		"gen_name": "Generation 5",
		"hair": "Blonde",
		"height": 153,
		"birthday": 130,
		"bg_color": Color(0.671, 0.031, 0.031)
	},
	"Mano_Aloe": {
		"name": "魔乃阿蘿耶",
		"language": "JP",
		"gen": 7,
		"gen_name": "Generation 5",
		"hair": "Pink",
		"height": 150,
		"birthday": 1028,
		"bg_color": Color(0.902, 0.267, 0.616)
	},
	"Mori_Calliope": {
		"name": "森美聲",
		"language": "EN",
		"gen": 8,
		"gen_name": "-Myth-",
		"hair": "Pink",
		"height": 168,
		"birthday": 404,
		"bg_color": Color(0.631, 0.008, 0.043)
	},
	"Takanashi_Kiara": {
		"name": "小鳥遊琪亞拉",
		"language": "EN",
		"gen": 8,
		"gen_name": "-Myth-",
		"hair": "Red",
		"height": 165,
		"birthday": 706,
		"bg_color": Color(0.863, 0.224, 0.027)
	},
	"Ninomae_Inanis": {
		"name": "伊那爾栖",
		"language": "EN",
		"gen": 8,
		"gen_name": "-Myth-",
		"hair": "Purple",
		"height": 157,
		"birthday": 520,
		"bg_color": Color(0.247, 0.243, 0.412)
	},
	"Watson_Amelia": {
		"name": "阿米莉亞",
		"language": "EN",
		"gen": 8,
		"gen_name": "-Myth-",
		"hair": "Blonde",
		"height": 150,
		"birthday": 106,
		"bg_color": Color(0.949, 0.741, 0.212)
	},
	"Gawr_Gura": {
		"name": "古拉",
		"language": "EN",
		"gen": 8,
		"gen_name": "-Myth-",
		"hair": "White",
		"height": 141,
		"birthday": 620,
		"bg_color": Color(0.227, 0.412, 0.698)
	},
	"Kureiji_Ollie": {
		"name": "奧莉",
		"language": "ID",
		"gen": 9,
		"gen_name": "holoro",
		"hair": "Red",
		"height": 162,
		"birthday": 1113,
		"bg_color": Color(0.718, 0.012, 0.055)
	},
	"Anya_Melfissa": {
		"name": "阿妮婭",
		"language": "ID",
		"gen": 9,
		"gen_name": "holoro",
		"hair": "Brown",
		"height": 147,
		"birthday": 312,
		"bg_color": Color(0.91, 0.612, 0.059)
	},
	"Pavolia_Reine": {
		"name": "蕾內",
		"language": "ID",
		"gen": 9,
		"gen_name": "holoro",
		"hair": "Silvery",
		"height": 172,
		"birthday": 909,
		"bg_color": Color(0.016, 0.059, 0.498)
	},
	"IRyS": {
		"name": "埃莉絲",
		"language": "EN",
		"gen": 10,
		"gen_name": "-Promise-",
		"hair": "Red",
		"height": 166,
		"birthday": 307,
		"bg_color": Color(0.6, 0.067, 0.314)
	},
	"Ouro_Kronii": {
		"name": "克洛尼",
		"language": "EN",
		"gen": 10,
		"gen_name": "-Promise-",
		"hair": "Blue",
		"height": 168,
		"birthday": 314,
		"bg_color": Color(0.114, 0.09, 0.592)
	},
	"Hakos_Baelz": {
		"name": "貝爾絲",
		"language": "EN",
		"gen": 10,
		"gen_name": "-Promise-",
		"hair": "Red",
		"height": 149,
		"birthday": 229,
		"bg_color": Color(0.996, 0.227, 0.176)
	},
	"Tsukumo_Sana": {
		"name": "九十九佐命",
		"language": "EN",
		"gen": 10,
		"gen_name": "-Council-",
		"hair": "Blonde",
		"height": 169,
		"birthday": 610,
		"bg_color": Color(0.835, 0.514, 0.671)
	},
	"Ceres_Fauna": {
		"name": "法娜",
		"language": "EN",
		"gen": 10,
		"gen_name": "-Promise-",
		"hair": "Green",
		"height": 164,
		"birthday": 321,
		"bg_color": Color(0.2, 0.792, 0.4)
	},
	"Nanashi_Mumei": {
		"name": "七詩無銘",
		"language": "EN",
		"gen": 10,
		"gen_name": "-Promise-",
		"hair": "Brown",
		"height": 156,
		"birthday": 804,
		"bg_color": Color(0.761, 0.576, 0.443)
	},
	"Laplus_Darknesss": {
		"name": "拉普拉斯",
		"language": "JP",
		"gen": 11,
		"gen_name": "Secret Society holoX",
		"hair": "Silvery",
		"height": 139,
		"birthday": 525,
		"bg_color": Color(0.267, 0.078, 0.584)
	},
	"Takane_Lui": {
		"name": "鷹嶺琉依",
		"language": "JP",
		"gen": 11,
		"gen_name": "Secret Society holoX",
		"hair": "Pink",
		"height": 161,
		"birthday": 611,
		"bg_color": Color(0.157, 0.016, 0.051)
	},
	"Hakui_Koyori": {
		"name": "博衣小夜璃",
		"language": "JP",
		"gen": 11,
		"gen_name": "Secret Society holoX",
		"hair": "Pink",
		"height": 153,
		"birthday": 315,
		"bg_color": Color(0.996, 0.408, 0.678)
	},
	"Sakamata_Chloe": {
		"name": "沙花叉克蘿伊",
		"language": "JP",
		"gen": 11,
		"gen_name": "Secret Society holoX",
		"hair": "Silvery",
		"height": 148,
		"birthday": 518,
		"bg_color": Color(0.671, 0.055, 0.047)
	},
	"Kazama_Iroha": {
		"name": "風真伊呂波",
		"language": "JP",
		"gen": 11,
		"gen_name": "Secret Society holoX",
		"hair": "Blonde",
		"height": 156,
		"birthday": 518,
		"bg_color": Color(0.267, 0.749, 0.718)
	},
	"Vestia_Zeta": {
		"name": "澤塔",
		"language": "ID",
		"gen": 12,
		"gen_name": "holoh3ro",
		"hair": "Silvery",
		"height": 155,
		"birthday": 1107,
		"bg_color": Color(0.592, 0.631, 0.682)
	},
	"Kaela_Kovalskia": {
		"name": "卡埃拉",
		"language": "ID",
		"gen": 12,
		"gen_name": "holoh3ro",
		"hair": "Blonde",
		"height": 173,
		"birthday": 830,
		"bg_color": Color(0.863, 0.145, 0.157)
	},
	"Kobo_Kanaeru": {
		"name": "可波",
		"language": "ID",
		"gen": 12,
		"gen_name": "holoh3ro",
		"hair": "Blue",
		"height": 150,
		"birthday": 1212,
		"bg_color": Color(0.086, 0.11, 0.31)
	},
	"Shiori_Novella": {
		"name": "詩織",
		"language": "EN",
		"gen": 13,
		"gen_name": "-Advent-",
		"hair": "Black",
		"height": 163,
		"birthday": 502,
		"bg_color": Color(0.549, 0.502, 0.682)
	},
	"Koseki_Bijou": {
		"name": "古石碧珠",
		"language": "EN",
		"gen": 13,
		"gen_name": "-Advent-",
		"hair": "Silvery",
		"height": 140,
		"birthday": 414,
		"bg_color": Color(0.294, 0.263, 0.875)
	},
	"Nerissa_Ravencroft": {
		"name": "納瑞莎",
		"language": "EN",
		"gen": 13,
		"gen_name": "-Advent-",
		"hair": "Black",
		"height": 175,
		"birthday": 1121,
		"bg_color": Color(0.118, 0.153, 0.675)
	},
	"Fuwawa_Abyssgard": {
		"name": "軟軟",
		"language": "EN",
		"gen": 13,
		"gen_name": "-Advent-",
		"hair": "Blonde",
		"height": 155,
		"birthday": 201,
		"bg_color": Color(0.176, 0.529, 0.969)
	},
	"Mococo_Abyssgard": {
		"name": "茸茸",
		"language": "EN",
		"gen": 13,
		"gen_name": "-Advent-",
		"hair": "Blonde",
		"height": 155,
		"birthday": 202,
		"bg_color": Color(1, 0.51, 0.788)
	},
	"Hiodoshi_Ao": {
		"name": "火威青",
		"language": "JP",
		"gen": 14,
		"gen_name": "ReGLOSS",
		"hair": "Blue",
		"height": 171,
		"birthday": 227,
		"bg_color": Color(0.086, 0.149, 0.294)
	},
	"Otonose_Kanade": {
		"name": "音乃瀨奏",
		"language": "JP",
		"gen": 14,
		"gen_name": "ReGLOSS",
		"hair": "Blonde",
		"height": 153,
		"birthday": 420,
		"bg_color": Color(0.965, 0.776, 0.388)
	},
	"Ichijou_Ririka": {
		"name": "一條莉莉華",
		"language": "JP",
		"gen": 14,
		"gen_name": "ReGLOSS",
		"hair": "Red",
		"height": 162,
		"birthday": 512,
		"bg_color": Color(0.933, 0.333, 0.545)
	},
	"Juufuutei_Raden": {
		"name": "儒烏風亭螺鈿",
		"language": "JP",
		"gen": 14,
		"gen_name": "ReGLOSS",
		"hair": "Purple",
		"height": 159,
		"birthday": 204,
		"bg_color": Color(0.11, 0.369, 0.31)
	},
	"Todoroki_Hajime": {
		"name": "轟一",
		"language": "JP",
		"gen": 14,
		"gen_name": "ReGLOSS",
		"hair": "Blonde",
		"height": 155,
		"birthday": 607,
		"bg_color": Color(0.573, 0.576, 0.996)
	},
	"Elizabeth_Rose_Bloodflame": {
		"name": "伊麗莎白",
		"language": "EN",
		"gen": 15,
		"gen_name": "-Justice-",
		"hair": "Red",
		"height": 171,
		"birthday": 425,
		"bg_color": Color(0.592, 0.188, 0.227)
	},
	"Gigi_Murin": {
		"name": "琪琪",
		"language": "EN",
		"gen": 15,
		"gen_name": "-Justice-",
		"hair": "Brown",
		"height": 153,
		"birthday": 1018,
		"bg_color": Color(0.804, 0.576, 0.157)
	},
	"Cecilia_Immergreen": {
		"name": "塞西莉亞",
		"language": "EN",
		"gen": 15,
		"gen_name": "-Justice-",
		"hair": "Green",
		"height": 162,
		"birthday": 1111,
		"bg_color": Color(0.075, 0.478, 0.259)
	},
	"Raora_Panthera": {
		"name": "拉歐拉",
		"language": "EN",
		"gen": 15,
		"gen_name": "-Justice-",
		"hair": "Pink",
		"height": 158,
		"birthday": 511,
		"bg_color": Color(0.906, 0.341, 0.525)
	},
	"Isaki_Riona": {
		"name": "響咲莉歐娜",
		"language": "JP",
		"gen": 16,
		"gen_name": "FLOW GLOW",
		"hair": "Silvery",
		"height": 160,
		"birthday": 529,
		"bg_color": Color(0.788, 0.149, 0.333)
	},
	"Koganei_Niko": {
		"name": "虎金妃笑虎",
		"language": "JP",
		"gen": 16,
		"gen_name": "FLOW GLOW",
		"hair": "Blonde",
		"height": 172,
		"birthday": 725,
		"bg_color": Color(0.94902, 0.36863, 0.06667)
	},
	"Mizumiya_Su": {
		"name": "水宮樞",
		"language": "JP",
		"gen": 16,
		"gen_name": "FLOW GLOW",
		"hair": "Blue",
		"height": 151,
		"birthday": 616,
		"bg_color": Color(0.39216, 0.8, 0.89412)
	},
	"Rindo_Chihaya": {
		"name": "輪堂千速",
		"language": "JP",
		"gen": 16,
		"gen_name": "FLOW GLOW",
		"hair": "Black",
		"height": 168,
		"birthday": 708,
		"bg_color": Color(0.17255, 0.54902, 0.54510)
	},
	"Kikirara_Vivi": {
		"name": "綺綺羅羅薇薇",
		"language": "JP",
		"gen": 16,
		"gen_name": "FLOW GLOW",
		"hair": "Pink",
		"height": 161,
		"birthday": 827,
		"bg_color": Color(0.90196, 0.28627, 0.60784)
	},
}
