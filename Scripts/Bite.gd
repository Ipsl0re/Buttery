extends AnimatedSprite2D

var shape
func _ready():
	shape = self.get_frame()

func _on__area_entered(area):
	var type = get_node("/root/Main/Knife").topping
	match (type):
		1:
			self.set_animation("Choc")
			pass
		2:
			self.set_animation("Nut")
			pass
		3:
			self.set_animation("Jam")
			pass
		4:
			self.set_animation("Malo")
			pass
	self.set_frame(shape)
