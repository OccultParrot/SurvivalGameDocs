extends TileMap

var moisture = FastNoiseLite.new()
var temperature = FastNoiseLite.new()
var altitude = FastNoiseLite.new()

var width = 1152 / 4
var height = 648 / 4

# Saves the data that is in an empty cell.
var empty_cell_data

@onready var player = get_parent().get_child(1)

func _ready():
	moisture.seed = randi()
	temperature.seed = randi()
	altitude.seed = randi()
	empty_cell_data = get_cell_tile_data(0, Vector2i(0,0))
	


func _process(delta):
	generate_chunk(player.position)
	if Input.is_action_just_pressed("change_terrain"):
		set_cell(0, local_to_map(player.position), 0, Vector2i(0,0))

func generate_chunk(position):
	var tile_pos = local_to_map(position)
	for x in range(width):
		for y in range(height):
			var map_pos = Vector2i(tile_pos.x - width/2 + x, tile_pos.y - height/2 + y)

			# Check if the cell is empty
			if get_cell_tile_data(0, map_pos) == empty_cell_data:
				var moist = moisture.get_noise_2d(map_pos.x, map_pos.y) * 10
				var temp = temperature.get_noise_2d(map_pos.x, map_pos.y) * 10
				var alt = altitude.get_noise_2d(map_pos.x, map_pos.y) * 10

				# Set a new tile only if the cell is empty
				set_cell(0, map_pos, 0, Vector2(round((moist + 10) / 5), round(temp + 10) / 5))
