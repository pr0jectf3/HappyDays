extends CanvasLayer

func _ready():
	get_tree().call_group("Gamestate","update_GUI")
	
func update_lives(lives_left):
	$Control/HBoxContainer/TextureRect/HBoxContainer/LifeCount.text = str(lives_left)
	
func update_coins(coins):
	$Control/HBoxContainer/TextureRect/HBoxContainer/CoinCount.text = str(coins)

func update_level(level):
	$Control/HBoxContainer/Level.text = "Level " + str(level)