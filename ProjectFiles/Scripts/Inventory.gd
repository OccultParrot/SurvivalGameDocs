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

func add_item(item : ItemTypes.Item, position : Vector2i, is_sideways : bool):
	if position > size || position < Vector2i.ZERO || inv_array[position.x][position.y] != ItemTypes.Air:
		return
	if is_sideways && position.x + 1 > size.x && position.x - 1 < 0 && inv_array[position.x - 1][position.y] != ItemTypes.Air || inv_array[position.x + 1][position.y]:
		return
	print("Yup!")

func get_item_vector(coordinate : Vector2i):
	return inv_array[coordinate.x][coordinate.y]
	
func get_item_int(x : int, y : int):
	return inv_array[x][y]
	
