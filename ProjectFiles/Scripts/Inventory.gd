extends Node

@export var size : Vector2i = Vector2i(5, 5)
@export var is_affected_by_weight : bool = true

var inv_array : Array 

func _ready():
	for i in size.y:
		var row : Array = []
		for j in size.x:
			row.append(ItemTypes.Air.new())
		inv_array.append(row)

		print(row) # For testing
