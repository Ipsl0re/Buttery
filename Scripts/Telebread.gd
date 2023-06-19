extends Sprite2D

var grid_height = 6
var grid_width = 5
var bite
var bitenum


func _setspread(grid):
	var incr = 0
	for i in grid_height:
		for j in grid_width:
			bite = $Node2D.get_child(incr)
			bitenum = bite.get_frame()
			match (grid[i][j]):
				1:
					bite.set_animation("Choc")
					pass
				2:
					bite.set_animation("Nut")
					pass
				3:
					bite.set_animation("Jam")
					pass
				4:
					bite.set_animation("Malo")
					pass
			bite.set_frame(bitenum)
			incr += 1



func _on_screen_nextpattern(grid):
	_setspread(grid)
