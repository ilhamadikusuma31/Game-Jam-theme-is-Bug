extends Node2D


onready var MainScene = get_tree().current_scene
var Musuh = load("res://Scene/Mosquito.tscn")

func spawn():
	var musuhku = Musuh.instance()
	MainScene.add_child(musuhku)
	musuhku.transform.origin = transform.origin + Vector2(rand_range(-40,40),rand_range(-19,19))

func _on_Timer_timeout():
	spawn()
