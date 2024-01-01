extends CharacterBody2D

var speed = 5
var is_ai = Global.ai
@export var score = 0
@export var ball : Node2D

func _physics_process(delta):
	if not is_ai:
		if Input.is_action_pressed("up2"):
			position.y -= speed
		if Input.is_action_pressed("down2"):
			position.y += speed
	else:
		print(ball.position.y, ' ', position.y)
		if position.y > ball.position.y:
			position.y -= speed
		if position.y < ball.position.y:
			position.y += speed
	position.y = clamp(position.y, 0, get_viewport_rect().size.y)
