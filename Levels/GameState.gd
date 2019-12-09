extends Node2D

var lives = 5
var coins = 0
var level = 1

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
	get_tree().call_group("GUI","update_coins",coins)

func update_GUI():
	get_tree().call_group("GUI","update_lives",lives)
	
func next_level():
	level += 1
	get_tree().change_scene("res://Levels/Level%s.tscn" % str(level))
	

func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")