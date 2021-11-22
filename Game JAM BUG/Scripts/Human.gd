extends KinematicBody2D

var selected = false


var blood = 100
var hit_mosquito = 10
onready var obj = get_node("../Control/CanvasLayer/BloodProgressBar")


func death():
	get_tree().change_scene("res://Scene/World.tscn")
	
	
#func _on_Grab_input_event(viewport, event, shape_idx):
#	if Input.is_action_just_pressed("click"):
#		selected = true
#
#func follow_mouse():
#	position = get_global_mouse_position()

#
#func _input(event):
#	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT :
#		if event.pressed:
#			selected = true
#
#		else:
#			selected = false


func _on_Skin_body_entered(body):
	if body.is_in_group("mosquito"):
		if blood <= 1:
			death()
		blood -= hit_mosquito
		obj.value = blood
		
		
		
		


