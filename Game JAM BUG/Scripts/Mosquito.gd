extends KinematicBody2D


var speed = 100
var zoom = 0.1 / 10
const MAX_ZOOM = 0.07
var motion_user = Vector2()

export var deegree = 90
var x = 0
var y = 0
onready var obj = get_parent().get_node("Human")



func _ready():
	pass


func _physics_process(delta):
	
#	rotation = lerp_angle(rotation, 0, 10 * delta)
#	print(obj.global_position - global_position)
	scale.x -= zoom
	scale.y -= zoom
#	var x = rand_range(obj.global_position-10,obj.global_position-10 )
#	var y = rand_range(obj.global_position-10,obj.global_position-10 )
#	print(global_position)
	
	if scale.x < MAX_ZOOM:
		zoom = 0
###
	if zoom == 0:
		randomize()
		x = rand_range(obj.global_position.x-492.931274,obj.global_position.x-531.730835)
		y = rand_range(obj.global_position.y-200,obj.global_position.y-400)
		var dir  = (obj.global_position - global_position + Vector2(x,y)).normalized()

		if dir.x in range(-1,1) or dir.y in range(-1,1):
			speed = 0
		look_at(Vector2(x,y))
#		rotation = lerp_angle(0, 90, 10 * delta)
		move_and_collide(dir * speed * delta)
		_ready()

#	if zoom == 0:
#		print(global_position)
#		if Input.is_action_pressed("ui_right"):
#			motion_user.x += 1
#		elif Input.is_action_pressed("ui_left"):
#			motion_user.x -= 1
#
#
#		else:
#			motion_user.x = 0
#			motion_user.y = 0
#
#
#		if Input.is_action_pressed("ui_up"):
#			motion_user.y -= 10
#		elif Input.is_action_pressed("ui_down"):
#			motion_user.y += 10
##
##
#	move_and_slide(motion_user)
