extends Node
# Called when the node enters the scene tree for the first time.
func _ready():
	$ItemList.max_columns = $Inventory.size.x
	for x in range($Inventory.size.x * $Inventory.size.y):
		$ItemList.add_item(str(x), null, true)
		
	$Inventory.inv_array[3][3] = ItemTypes.GraniteRock.new()


# Called every frame. 'delta' is the elapsedtime since the previous frame.
func _process(delta):
	pass
	


func _on_item_list_item_clicked(index, at_position, mouse_button_index):
	# Calculate coordinates based on the index and inventory size
	var column = index % $Inventory.size.x
	var row = index / $Inventory.size.x  # Assuming $Inventory.size.x > 0

	print("Item at coordinates ", column, ", ", row, " is ", $Inventory.get_item_int(row, column))
	
