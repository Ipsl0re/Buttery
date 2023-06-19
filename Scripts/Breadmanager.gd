extends Node2D

var loaf = preload("res://Scenes/Bread.tscn")
signal nextpattern(grid)
signal end(won)

var lives = 3
var puznum = 1
var correct = false

var grid = []
var grid_width = 5
var grid_height = 6

func _ready():
	grid = $Breadbox._getpattern()
	emit_signal("nextpattern", grid)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_area_entered(area):
	print(correct)
	if correct == false:
		lives -= 1
		if lives <= 0:
			emit_signal("end", false)
			pass
	var instance = loaf.instantiate()
	puznum += 1
	if puznum == 9:
		var win = preload("res://Scenes/Win.tscn").instantiate()
		get_tree().get_root().add_child(win)
		get_tree().get_root().queue_free()
	else:
		add_child(instance)
		grid = $Breadbox._getpattern()
		emit_signal("nextpattern", grid)
		correct = false

func _on_bread_compare(ogrid):
	var passes = true
	for i in grid_height:
		for j in grid_width:
			if grid[i][j] != ogrid[i][j]:
				passes = false
	if passes == true:
		correct = true
	else:
		correct = false
