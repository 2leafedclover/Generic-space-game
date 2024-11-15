extends Label

signal passdown(new_text:String)

var response
var TEST: float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	TEST = TEST + delta



func _on_type_input_text_submitted(new_text: String) -> void:
	passdown.emit(self.text)
	if new_text.find("beep") == 1:
		var kachow = new_text.lstrip(">beep")
		response = str(TEST)
	elif new_text.find("mrowr") == 1:
		response = ":3 meow prrrrrrp mrooow"
	else:
		response = "Error"
	self.text = new_text + "\n" + response
