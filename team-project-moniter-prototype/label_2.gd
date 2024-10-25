extends Label

signal passdown_2(new_text:String)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_label_passdown(new_text: String) -> void:
	passdown_2.emit(self.text)
	self.text = new_text
