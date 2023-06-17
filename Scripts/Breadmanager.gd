extends Node2D

var loaf = preload("res://Scenes/Bread.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _newslice():
	var instance = loaf.instantiate()
	add_child(instance)


func _on_area_2d_area_entered(area):
	var instance = loaf.instantiate()
	add_child(instance)
