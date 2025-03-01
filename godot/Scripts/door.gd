extends Node2D

@onready var key = $"../../inventory/key"

@export var mouse: bool = false
var bigger: bool = true
@onready var room_1 = $".."
@onready var room_2 = $"../../room2"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			if(Global.unlock_door == false):
				if(key.visible == true):
					Global.unlock_door = true
					key.visible = false
			else:
				room_1.visible = false
				room_2.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
