extends Node

@export var ai = false

var music_player

func _ready():
	music_player = AudioStreamPlayer.new()
	music_player.stream = load("res://audio/music.mp3")
	add_child(music_player)
	music_player.play()
