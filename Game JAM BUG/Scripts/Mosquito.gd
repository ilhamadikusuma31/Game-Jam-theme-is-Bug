extends KinematicBody2D


var motion = 0.1
var zoom = motion / 10
const MAX_ZOOM = 0.1
onready var mosquito = $AnimatedSprite

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	$AnimatedSprite.position.x += motion
	mosquito.scale.x -= zoom
	mosquito.scale.y -= zoom
	
#	$Camera2D.zoom.x -= zoom * 0.5
#	$Camera2D.zoom.y -= zoom * 0.5
#
	
	if mosquito.scale.x < MAX_ZOOM:
		zoom = 0
	
