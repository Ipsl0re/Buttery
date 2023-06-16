extends RigidBody2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	add_constant_central_force(Vector2(-12, 0))


func _on_area_2d_area_entered(area):
	queue_free()
