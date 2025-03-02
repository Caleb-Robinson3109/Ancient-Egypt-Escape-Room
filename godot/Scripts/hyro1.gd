extends Node2D
@onready var hyro_1 = $"."
@onready var r_2_key = $"../../inventory/r2Key"
@onready var key = $"../../key"

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			Global.has_hyro1 = true
			hyro_1.visible = false
			if(Global.has_hyro1 && Global.has_hyro2 && Global.has_hyro3):
				Global.has_hyro_key = true
				r_2_key.visible = true
				key.play()
				
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
