extends Node
# Called when the node enters the scene tree for the first time.
var inv = Inventory.GridInventory.new(5,5)

func _ready():
	var item = ItemTypes.BasaltStone.new()
	inv.place_item(item, Vector2(1,1), item.Size, false)

# Called every frame. 'delta' is the elapsedtime since the previous frame.
func _process(delta):
	pass
