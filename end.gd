extends Node2D

func _on_button_pressed():
	get_node("AudioStreamPlayer2D").play()
	get_node("Timer").start()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://start.tscn")
