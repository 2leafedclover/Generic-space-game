extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://ui.tscn")



func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Optionmenu.tscn")


func _on_exit_pressed():
	get_tree().quit()
