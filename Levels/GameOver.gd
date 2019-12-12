extends Control



func _on_RestartButton_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_GameOver_gui_input(event):
	print(event.pressed)
	if event == Input:
		get_tree().change_scene("res://Levels/Level1.tscn")
