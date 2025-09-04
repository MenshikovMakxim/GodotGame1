extends Area2D


func _on_area_entered(area: Area2D) -> void:
	print(area)
	queue_free()
	pass # Replace with function body.
