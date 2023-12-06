extends Object
class_name ItemTypes

"""
Item groups:
	rock
"""

class Item:
	var Name : String
	var Description : String
	var Group : String
	var Weight : float
	var Max_Stack_Size : int
	var Size : Vector2i
	
	func _init(name : String, description : String, group : String, weight : float, max_stack_size : int, size : Vector2i):
		self.Name = name
		self.Description = description
		self.Group = group
		self.Weight = weight
		self.Max_Stack_Size = max_stack_size
		self.Size = size

class ChalkRock extends Item:
	func _init():
		super._init("Rock (Chalk)", "A white crumbly rock.", "rock", 0.2, 10, Vector2i(1,1))

class GabbroRock extends Item:
	func _init():
		super._init("Rock (Gabbro)", "A dark coarse-grained rock.", "rock", 0.2, 10, Vector2i(1,1))
