extends Area2D


func _on_area_entered(area: Area2D) -> void:
	if area.name.begins_with("Hero"):
		#self.get_parent().change_score(1)
		area.change_score(1)
		queue_free()
	pass # Replace with function body.
