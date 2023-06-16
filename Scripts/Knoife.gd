extends AnimatedSprite2D

var topping
# Called when the node enters the scene tree for the first time.
func _ready():
	topping = 0
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.set_position(Vector2(get_viewport().get_mouse_position()))

func _on_pots_newspread(type):
	topping = type
	set_frame(type)
