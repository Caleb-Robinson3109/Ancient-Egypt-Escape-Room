extends Node2D
@onready var room_3 = $"../../room3"
@onready var room_2 = $".."
@export var mouse: bool = false
@onready var r_2_key = $"../../inventory/r2Key"

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			if(Global.unlock_door2 == false):
				if(r_2_key.visible == true):
					Global.unlock_door2 = true
					r_2_key.visible = false
			else:
				room_2.visible = false
				room_3.visible = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = true


func _on_button_pressed():
	if(Global.unlock_door2 == false):
		if(r_2_key.visible == true):
			Global.unlock_door2 = true
			r_2_key.visible = false
	else:
		room_2.visible = false
		room_3.visible = true
