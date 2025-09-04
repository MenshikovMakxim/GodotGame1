extends Node2D

@export var speed=100
@export var isAI = false
var dirX = 1
var dirY = 1
var timeOfmovement = 0
var timeOfDirChange = 3

var score = 0

func change_score(delta):
	score+=delta
	$Score.text = str(score)

func _process(delta: float) -> void:
	#self.position.x+=0.2
	if isAI:
		self.position.x+=speed*delta*dirX
		self.position.y+=speed*delta*dirY
		if self.position.x>=1092 or self.position.x<=60:
			dirX = -dirX
		if self.position.y>=588 or self.position.y<=60:
			dirY = -dirY
			
		timeOfDirChange+=delta
		if timeOfmovement>=timeOfDirChange:
			timeOfmovement=0
			dirX = randf_range(-1,1)
			dirY = randf_range(-1,1)
	pass
	
func _input(event: InputEvent) -> void:
	if isAI:
		return
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
