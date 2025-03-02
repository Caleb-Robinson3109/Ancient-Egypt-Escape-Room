extends Node2D
@onready var a = $LineEdita
@onready var n = $LineEditn
@onready var u = $LineEditu
@onready var b = $LineEditb
@onready var i = $LineEdits
@onready var s = $LineEditi


func _on_exit_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_unlock_pressed():
	var a1 = a.text.to_lower()
	var a2 = n.text.to_lower()
	var a3 = u.text.to_lower()
	var a4 = b.text.to_lower()
	var a5 = i.text.to_lower()
	var a6 = s.text.to_lower()
	print(a1 + a2 + a3 + a4 + a5 + a6 )

	if(a1 == "a" && a2 == "n" && a3 == "u" && a4 == "b" && a5 == "i" && a6 == "s"):
		Global.has_frank = true
		Global.has_beeswax = true
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
