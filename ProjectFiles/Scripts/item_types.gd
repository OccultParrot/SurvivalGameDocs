extends Object

class_name ItemTypes

"""
Item tags:
	- testing # When an item has the "testing" tag, debug information will be displayed about the item when hovered over
	- weapon
	
An item must have these things in the super._init():
	name : String
	description : String
	tags : Array
	weight : float
	max_stack_size : int
	texture : Texture2D
	size : Vector2i
"""

class Item:
	var Name : String
	var Description : String
	var Tags : Array
	var Weight : float
	var Max_Stack_Size : int
	var Item_Texture : Texture2D
	var Size : Vector2i
	var components : Array

	func _init(name : String, description : String, tags : Array, weight : float, max_stack_size : int, item_texture : Texture2D, size : Vector2i):
		self.Name = name
		self.Description = description
		self.Tags = tags
		self.Weight = weight
		self.Max_Stack_Size = max_stack_size
		self.Item_Texture = item_texture
		self.Size = size
		self.components = []

		# Add default components based on item group
		for tag in self.Tags:
			match tag:
				"weapon":
					self.add_component(Damage.new(10))  # Default damage value is 10

	func add_component(component):
		self.components.append(component)

	func _to_string():
		return self.Name

class Air extends Item:
	func _init():
		super._init("Air", "A gas that I recomend breathing", [], 0.0, 1, null, Vector2i.ZERO)


# Define a base class for components
class Component:
	func _init():
		pass

# Example component: Enchantable
class Enchantable extends Component:
	var enchant_level : int
	
	func _init(enchant_level : int):
		self.enchant_level = enchant_level

# Example component: Damage
class Damage extends Component:
	var damage_value : int
	
	func _init(damage_value : int):
		self.damage_value = damage_value
