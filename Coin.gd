extends Node2D

var taken = false

func _on_Coin_body_entered(body):
	if not taken :
		taken = true
		$AnimationPlayer.play("die")
		$AudioStreamPlayer.play()
		get_tree().call_group("Gamestate","collect_coin")
	
func die():
	queue_free()
