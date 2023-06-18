extends AnimatedSprite2D

signal newspread(type, pos)
var pos = [0,0]
var shape
func _ready():
	var postring = str(get_name())
	pos[0] = int(postring[0])
	pos[1] = int(postring[2])
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
	emit_signal("newspread", type, pos)
