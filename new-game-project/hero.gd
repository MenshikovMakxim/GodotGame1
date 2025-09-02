extends Node2D

@export var speed=100

func _process(delta: float) -> void:
	#self.position.x+=0.2
	pass
	
func _input(event: InputEvent) -> void:
	print(event)
	if event is InputEventKey:
		if event.keycode==KEY_UP:
			self.position.y-=speed
		if event.keycode==KEY_LEFT:
			self.position.x-=speed
		if event.keycode==KEY_DOWN:
			self.position.y+=speed
		if event.keycode==KEY_RIGHT:
			self.position.x+=speed
