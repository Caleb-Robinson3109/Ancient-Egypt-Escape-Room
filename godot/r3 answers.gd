extends Node2D
@onready var line_edit_north = $LineEdit_north
@onready var line_edit_lower = $LineEdit_lower
@onready var line_edit_ciro = $LineEdit_ciro


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_enter_pressed():
	var a1 = line_edit_north.text.to_lower()
	var a2 = line_edit_lower.text.to_lower()
	var a3 = line_edit_ciro.text.to_lower()
	
	if(a1 == "north" && a2 == "lower" && a3 == "giza"):
		print("hi")
		Global.complete_quiz = true
		if(Global.complete_feather && Global.complete_heart):
			get_tree().change_scene_to_file("res://Scenes/win.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/main.tscn")
			
	
