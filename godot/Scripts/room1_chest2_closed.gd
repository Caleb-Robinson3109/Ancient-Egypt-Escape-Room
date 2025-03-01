extends Node2D
@onready var chest_2_closed = $"."
@onready var chest_2_open = $"../chest2_open"
@onready var frank = $"../../inventory/frank"
@onready var beeswax = $"../../inventory/beeswax"

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			get_tree().change_scene_to_file("res://Scenes/room1_chest2_unlock.tscn")
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mouse):
		if(bigger):
			chest_2_closed.scale.x = chest_2_closed.scale.x + 0.005
			chest_2_closed.scale.y = chest_2_closed.scale.y + 0.005
			if(chest_2_closed.scale.x >= 1.2):
				bigger = false
		else:
			chest_2_closed.scale.x = chest_2_closed.scale.x - 0.005
			chest_2_closed.scale.y = chest_2_closed.scale.y - 0.005
			if(chest_2_closed.scale.x <= 1):
				bigger = true


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
