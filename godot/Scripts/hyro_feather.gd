extends Node2D
@onready var feather_inv = $"../../inventory/feather"
@onready var hyro_feather = $"."

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			Global.has_feather = true
			hyro_feather.visible = false
			feather_inv.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
