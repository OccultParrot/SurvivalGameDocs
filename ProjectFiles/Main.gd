extends Node

@export var speed : float = 1
var direction : Vector3

func _process(delta):
	direction = Vector3(0.0,0.0,0.0)
	if Input.is_action_pressed("move_up"):
		direction.y += 1
	if Input.is_action_pressed("move_down"):
		direction.y -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	$Camera3D.position += (direction.normalized() * speed) * delta
