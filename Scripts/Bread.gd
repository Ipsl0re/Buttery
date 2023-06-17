extends RigidBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	#add_constant_central_force(Vector2(-10, 0))
	pass

func _compare():
	pass

func _on_area_2d_area_entered(area):
	queue_free()
