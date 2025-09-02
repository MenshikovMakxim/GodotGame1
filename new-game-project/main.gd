extends Node2D


func _on_check_button_button_down() -> void:
	print("Hi!") # Replace with function body.
	$Icon.position.x+=10
	


func _on_timer_timeout() -> void:
	print("tick")
	pass # Replace with function body.
