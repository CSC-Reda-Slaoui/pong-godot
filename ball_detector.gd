extends Area2D

@export var ball : PackedScene
@export var player1 : Node2D
@export var player2 : Node2D

func _ready():
	print("hello")

func _on_body_entered(body):
	get_node("AudioStreamPlayer2D").play()
	
	var player
	var score
	
	if position.x < 0:
		player = 1
		player1.score += 1
		score = player1.score
	else:
		player = 2
		player2.score += 1
		score = player2.score
	
	if score == 10:
		get_node("Timer").start()
	else:
		body.velocity = Vector2(0, 0)
		body.position.x = get_viewport_rect().size.x / 2
		body.position.y = get_viewport_rect().size.y / 2
		body.get_node("Timer").start()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://end.tscn")
