extends Node2D
@onready var linen = $"."
@onready var inv = $"../../inventory/linen"

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			Global.has_linen = true
			linen.visible = false
			inv.visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mouse):
		if(bigger):
			linen.scale.x = linen.scale.x + 0.005
			linen.scale.y = linen.scale.y + 0.005
			if(linen.scale.x >= 1.2):
				bigger = false
		else:
			linen.scale.x = linen.scale.x - 0.005
			linen.scale.y = linen.scale.y - 0.005
			if(linen.scale.x <= 1):
				bigger = true


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
