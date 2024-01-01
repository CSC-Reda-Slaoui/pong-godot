extends Node2D

func _process(delta):
	get_node("Label").text = str(get_node("Player").score)
	get_node("Label2").text = str(get_node("Player2").score)
