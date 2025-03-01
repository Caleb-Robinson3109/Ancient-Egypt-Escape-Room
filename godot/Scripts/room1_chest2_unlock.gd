extends Node2D
@onready var line_edit = $LineEdit

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_unlock_pressed():
	var answer: String = line_edit.text.to_lower()
	if(answer == "answer"):
		Global.has_frank = true
		Global.has_beeswax = true
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
