extends Node2D

var loaf = preload("res://Scenes/Bread.tscn")
signal nextpattern(grid)

var lives = 3
var correct = null

var grid = []
var grid_width = 5
var grid_height = 6

func _ready():
	for i in grid_height:
		grid.append([])
		for j in grid_width:
			grid[i].append(1) # Set a starter value for each position
	emit_signal("nextpattern", grid)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print (lives)
	pass

func _on_area_2d_area_entered(area):
	print(correct)
	if correct == false:
		lives -= 1
	var instance = loaf.instantiate()
	add_child(instance)
	correct = null
	emit_signal("nextpattern", grid)

func _on_bread_compare(ogrid):
	var passes = true
	for i in grid_height:
		for j in grid_width:
			if grid[i][j] != ogrid[i][j]:
				passes = false
	if passes == true:
		correct = true
