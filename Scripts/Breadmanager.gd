extends Node2D

var loaf = preload("res://Scenes/Bread.tscn")

var grid = []
var grid_width = 5
var grid_height = 6

func _ready():
	for i in grid_height:
		grid.append([])
		for j in grid_width:
			grid[i].append(1) # Set a starter value for each position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_area_entered(area):
	var instance = loaf.instantiate()
	add_child(instance)


func _on_bread_compare(ogrid):
	var passes = true
	for i in grid_height:
		for j in grid_width:
			if grid[i][j] != ogrid[i][j]:
				passes = false
	if passes == true:
		print("Match!")
