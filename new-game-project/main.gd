extends Node2D

var score = 0

func change_score(delta):
	score+=delta
	$score.text = str(score)
	
func _on_check_button_button_down() -> void:
	print("Hi!") # Replace with function body.
	$Icon.position.x+=10
	

func _on_timer_timeout() -> void:
	print("tick")
	var newCoin = preload("res://Coin.tscn").instantiate()
	newCoin.position.x = randi_range(0,800)
	newCoin.position.y = randi_range(0,600)
	self.add_child(newCoin)
	pass # Replace with function body.
