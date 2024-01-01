extends CharacterBody2D

var speed = 5
@export var score = 0

func _physics_process(delta):
	if Input.is_action_pressed("up1") and position.y > 0:
		position.y -= speed
	if Input.is_action_pressed("down1") and position.y < get_viewport_rect().size.y:
		position.y += speed
