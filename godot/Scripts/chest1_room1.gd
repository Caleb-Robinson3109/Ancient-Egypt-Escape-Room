extends Node2D
@onready var chest_1 = $"."

@export var mouse: bool = false
var bigger = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			get_tree().change_scene_to_file("res://Scenes/room1_chest1_unlock.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mouse):
		if(bigger):
			chest_1.scale.x = chest_1.scale.x + 0.005
			chest_1.scale.y = chest_1.scale.y + 0.005
			if(chest_1.scale.x >= 1.3):
				bigger = false
		else:
			chest_1.scale.x = chest_1.scale.x - 0.005
			chest_1.scale.y = chest_1.scale.y - 0.005
			if(chest_1.scale.x <= 1):
				bigger = true


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
