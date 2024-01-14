extends Node

@export var speed : float = 1

func _process(delta):
	$Scenery/Square.rotate(Vector3(1,1,0).normalized(), 0.005)
