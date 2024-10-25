extends Label

signal passdown(new_text:String)

var response

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_type_input_text_submitted(new_text: String) -> void:
	passdown.emit(self.text)
	if new_text.lstrip(">") == "perform action":
		response = "Action Successfully Performed"
	else:
		response = "Error"
	self.text = response + "\n" + new_text
