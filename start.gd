extends Node2D

func _on_button_pressed():
	Global.ai = true
	get_node("AudioStreamPlayer2D").play()
	get_node("Timer").start()

func _on_player_pressed():
	get_node("AudioStreamPlayer2D").play()
	get_node("Timer").start()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://main.tscn")
