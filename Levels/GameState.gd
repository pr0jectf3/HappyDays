extends Node2D

var lives = 5
var coins = 0
var level = 1

const COINS_TO_NEW_LIFE = 15

func _ready():
	add_to_group("Gamestate")
	update_GUI()

func hurt():
	lives -= 1
	update_GUI()
	if lives < 0:
		end_game()

func collect_coin():
	coins += 1
	if coins % COINS_TO_NEW_LIFE == 0:
		lives += 1
	update_GUI()

func update_GUI():
	get_tree().call_group("GUI","update_level",level)
	get_tree().call_group("GUI","update_lives",lives)
	get_tree().call_group("GUI","update_coins",coins)
	
func next_level():
	level += 1
	get_tree().change_scene("res://Levels/Level%s.tscn" % str(level))
	update_GUI()
	

func end_game():
	coins = 0
	level = 1
	lives = 5
	get_tree().change_scene("res://Levels/GameOver.tscn")