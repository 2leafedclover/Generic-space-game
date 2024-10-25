extends LineEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if self.text == "":
		self.text = ">"
	if self.caret_column == 0:
		self.caret_column = 1


func _on_text_submitted(new_text: String) -> void:
	self.text = ">"
