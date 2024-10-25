extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = " "
	button.pressed.connect(self._button_pressed)
	add_child(button)

func _button_pressed():
	print("glorp")
