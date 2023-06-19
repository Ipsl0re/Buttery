extends Node2D

signal nextpattern(grid)


func _on_breadmanager_nextpattern(grid):
	emit_signal("nextpattern", grid)
