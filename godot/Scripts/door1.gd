extends Node2D
@onready var room_2 = $".."
@onready var room_1 = $"../../room1"
@export var mouse: bool = false
@onready var main = $"../.."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			room_2.visible = false
			room_1.visible = true
			Global.room = 1
			
func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
