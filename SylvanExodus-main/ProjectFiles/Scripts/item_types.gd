extends Object

class_name ItemTypes

"""
Item tags:
	- testing # When an item has the "testing" tag, debug information will be displayed about the item when hovered over
	- weapon
	- stone
	
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
	var IsSideways : bool = false
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

	# When you get the class as a string, it returns the name of the item.
	func _to_string():
		return self.Name


class InventoryItem:
	var item_data : Item
	var position : Vector2
	var size : Vector2

	func _init(item_data : ItemTypes.Item, position : Vector2, size : Vector2):
		self.item_data = item_data
		self.position = position
		self.size = size

# Air item, used to fill empty space
class Air extends Item:
	func _init():
		super._init("Air", "A gas that I recomend breathing", [], 0.0, 1, null, Vector2i.ZERO)




# ===== Stone Items =====
class BasaltStone extends Item:
	func _init():
		super._init("Stone (Basalt)", "Dark and dense, with a black hue.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class ChertStone extends Item:
	func _init():
		super._init("Stone (Chert)", "Smooth and often colorful.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class FlintStone extends Item:
	func _init():
		super._init("Stone (Flint)", "Recognized for its sharp edges.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class GraniteStone extends Item:
	func _init():
		super._init("Stone (Granite)", "Coarse texture, often flecked.", ["stone"], 0.5, 5, load("res://Assets/Rocks/granite_rock.png"), Vector2i(1,1))

class HornstoneStone extends Item:
	func _init():
		super._init("Stone (Hornstone)", "Dense and hard.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class LimestoneStone extends Item:
	func _init():
		super._init("Stone (Limestone)", "Light in color.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class ObsidianStone extends Item:
	func _init():
		super._init("Stone (Obsidian)", "Glossy black with sharp edges.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class RhyoliteStone extends Item:
	func _init():
		super._init("Stone (Rhyolite)", "Fine-grained and often colorful.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class SandstoneStone extends Item:
	func _init():
		super._init("Stone (Sandstone)", "Textured with sand-sized grains.", ["stone"], 0.5, 5, load("res://Assets/Rocks/Sandstone.png"), Vector2i(1,1))

class SerpentineStone extends Item:
	func _init():
		super._init("Stone (Serpentine)", "Exhibits various colors.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))

class ShaleStone extends Item:
	func _init():
		super._init("Stone (Shale)", "Fine-grained and often layered.", ["stone"], 0.5, 5, load("res://Assets/Misc/Missing_Texture.png"), Vector2i(1,1))




# ===== Item Components =====
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

# Durability component for items
class Durability extends Component:
	var durability : int
	var max_durability : int

	func _init(starting_durability : int):
		self.durability = starting_durability
		self.max_durability = starting_durability
