extends Node

class GridInventory:
	var grid_size : Vector2
	var grid : Array

	func _init(width : int, height : int):
		grid_size = Vector2(width, height)
		grid = []

		# Initialize the grid with empty spaces
		for y in range(height):
			var row = []
			for x in range(width):
				row.append(null)
			grid.append(row)

	func place_item(item_data : ItemTypes.Item, position : Vector2, size : Vector2, isSideWays : bool = false) -> bool:
		# Check if the item can be placed at the specified position and size
		if is_position_valid(position, size, isSideWays):
			# Place the item on the grid
			for y in range(int(size.y)):
				for x in range(int(size.x)):
					grid[int(position.y) + y][int(position.x) + x] = ItemTypes.InventoryItem.new(item_data, position, size)
			return true
		else:
			return false

	func is_position_valid(position : Vector2, size : Vector2, isSideWays : bool) -> bool:
		# Check if the position and size of the item are within the bounds of the grid
		var end_x : int
		var end_y : int
		if isSideWays == true:
			end_x = int(position.y + size.y)
			end_y = int(position.x + size.x)
		else:
			end_x = int(position.x + size.x)
			end_y = int(position.y + size.y)

		if position.x < 0 or position.y < 0 or end_x > grid_size.x or end_y > grid_size.y:
			return false

		# Check if the cells are empty
		for y in range(int(size.y)):
			for x in range(int(size.x)):
				if grid[int(position.y) + y][int(position.x) + x] != null:
					return false

		return true
