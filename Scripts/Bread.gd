extends Node2D

signal compare(grid)
var grid = []
var grid_width = 5
var grid_height = 6

func _ready():
	var manager = get_node("/root/Main/Breadmanager")
	self.compare.connect(manager._on_bread_compare) #in theory, this needs to be in the breadmanager. but might be possible still?
	for i in grid_height:
		grid.append([])
		for j in grid_width:
			grid[i].append(0) # Set a starter value for each position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(Vector2(-2, 0))

func _on_area_2d_area_entered(area):
	queue_free()

func _on__newspread(type, pos):
	grid[pos[0]][pos[1]] = type
	emit_signal("compare", grid)
