extends Node2D
@onready var scroll_1 = $"."
@onready var scroll1_inv = $"../../inventory/room1_scroll1"
@onready var paper = $"../../paper"

@export var mouse: bool = false
var bigger: bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("click"):
		if(mouse):
			#add the scroll to the bag
			Global.room1_has_scroll1 = true
			scroll_1.visible = false
			scroll1_inv.visible = true
			paper.play()
			

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(mouse):
		if(bigger):
			scroll_1.scale.x = scroll_1.scale.x + 0.005
			scroll_1.scale.y = scroll_1.scale.y + 0.005
			if(scroll_1.scale.x >= 1.2):
				bigger = false
		else:
			scroll_1.scale.x = scroll_1.scale.x - 0.005
			scroll_1.scale.y = scroll_1.scale.y - 0.005
			if(scroll_1.scale.x <= 1):
				bigger = true


func _on_area_2d_mouse_entered():
	mouse = true


func _on_area_2d_mouse_exited():
	mouse = false
