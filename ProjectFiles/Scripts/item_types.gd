extends Object
class_name ItemTypes

"""
Item groups:
	rock
	air # Only holds TESTING ITEMS!!!
"""

class Item:
	var Name : String
	var Description : String
	var Group : String
	var Weight : float
	var Max_Stack_Size : int
	var Item_Texture : Texture2D
	var Size : Vector2i
	
	func _init(name : String, description : String, group : String, weight : float, max_stack_size : int, item_texture : Texture2D, size : Vector2i):
		self.Name = name
		self.Description = description
		self.Group = group
		self.Weight = weight
		self.Max_Stack_Size = max_stack_size
		self.Item_Texture = item_texture
		self.Size = size

	func _to_string():
		return self.Name

class Air extends Item:
	func _init():
		super._init("", "", "air", 0.0, 1, null, Vector2i(1,1))

class GraniteRock extends Item:
	func _init():
		super._init("Rock (Granite)", "A hard rock with speckles.", "rock", 0.2, 10, load("res://Assets/Rocks/granite_rock.png"), Vector2i(1,1))

class GabbroRock extends Item:
	func _init():
		super._init("Rock (Gabbro)", "A dark coarse-grained rock.", "rock", 0.2, 10, load("res://Assets/Rocks/granite_rock.png"), Vector2i(1,1))
