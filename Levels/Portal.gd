extends Node2D


func _on_Area2D_body_entered(body):
	print("victory")
	get_tree().call_group("Gamestate","next_level")
