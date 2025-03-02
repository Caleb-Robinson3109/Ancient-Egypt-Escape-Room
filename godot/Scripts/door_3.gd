extends Node2D
@onready var room_3 = $".."
@onready var room_2 = $"../../room2"
@export var mouse: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _input(event):
	if event.is_action_pressed("click"):
		print("click")
		if(mouse):
			print("what")
			room_2.visible = true
			room_3.visible = false
			

func _on_area_2d_mouse_entered():
	print("mouse")
	mouse = true


func _on_area_2d_mouse_exited():
	print("no mouce")
	mouse = false
