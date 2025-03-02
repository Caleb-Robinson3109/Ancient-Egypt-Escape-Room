extends Node2D
@onready var left = $left
@onready var right = $right



# Called when the node enters the scene tree for the first time.
func _ready():
	if(Global.room1_has_floor_scroll):
		left.visible = true
	if(Global.room1_has_shelf_scroll):
		right.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
