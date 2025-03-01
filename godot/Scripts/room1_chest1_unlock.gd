extends Node2D
@onready var line_edit_s = $LineEdit_s
@onready var line_edit_l = $LineEdit_l
@onready var line_edit_w = $LineEdit_w
@onready var line_edit_f = $LineEdit_f


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_unlock_button_pressed():
	if((line_edit_s.text == "s" || line_edit_s.text == "S") && (line_edit_l.text == "l" || line_edit_l.text == "L") && (line_edit_w.text == "w" || line_edit_w.text == "W") && (line_edit_f.text == "f" || line_edit_f.text == "F")):
		Global.room1_chest1_unlocked = true
		get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_exti_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
