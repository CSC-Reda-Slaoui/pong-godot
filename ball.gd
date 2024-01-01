extends CharacterBody2D

var initial_speed = 10

func _ready():
	get_node("Timer").start()

func _physics_process(delta):
	var collision = move_and_collide(velocity)
	if collision:
		get_node("AudioStreamPlayer2D").play()
		velocity.x *= -1.02
		velocity.y += randf_range(-5, 5)
	
	if position.y < 0:
		velocity.y *= -1
	
	if position.y > get_viewport_rect().size.y:
		velocity.y *= -1

func _on_timer_timeout():
	velocity = Vector2(initial_speed, 0)
	var factor = randi_range(0, 1)
	if factor == 1:
		velocity *= -1.
